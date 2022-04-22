using DocumentManagement.Helper;
using DocumentManagement.MediatR.Commands;
using DocumentManagement.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class DownloadDocumentCommandHandler : IRequestHandler<DownloadDocumentCommand, string>
    {
        private readonly IDocumentRepository _documentRepository;
        private readonly PathHelper _pathHelper;

        public DownloadDocumentCommandHandler(IDocumentRepository documentRepository,
            PathHelper pathHelper)
        {
            _documentRepository = documentRepository;
            _pathHelper = pathHelper;
        }

        public async Task<string> Handle(DownloadDocumentCommand request, CancellationToken cancellationToken)
        {
            var documentPath = await _documentRepository.All.FirstOrDefaultAsync(c => c.Id == request.Id);
            return Path.Combine(_pathHelper.DocumentPath, documentPath?.Url);
        }
    }
}
