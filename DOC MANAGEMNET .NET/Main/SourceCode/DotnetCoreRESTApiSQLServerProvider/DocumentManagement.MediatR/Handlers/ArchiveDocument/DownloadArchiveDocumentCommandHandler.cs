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
    public class DownloadArchiveDocumentCommandHandler : IRequestHandler<DownloadArchiveDocumentCommand, string>
    {
        private readonly IArchiveDocumentRepository _documentRepository;
        private readonly PathHelper _pathHelper;

        public DownloadArchiveDocumentCommandHandler(IArchiveDocumentRepository documentRepository,
            PathHelper pathHelper)
        {
            _documentRepository = documentRepository;
            _pathHelper = pathHelper;
        }

        public async Task<string> Handle(DownloadArchiveDocumentCommand request, CancellationToken cancellationToken)
        {
            var documentPath = await _documentRepository.All.FirstOrDefaultAsync(c => c.Id == request.Id);
            return Path.Combine(_pathHelper.DocumentPath, documentPath?.Url);
        }
    }
}
