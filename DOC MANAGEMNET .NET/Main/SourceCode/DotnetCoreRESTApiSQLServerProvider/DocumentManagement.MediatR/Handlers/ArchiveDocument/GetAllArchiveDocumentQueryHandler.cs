using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class GetAllArchiveDocumentQueryHandler : IRequestHandler<GetAllArchiveDocumentQuery, ArchiveDocumentList>
    {
        private readonly IArchiveDocumentRepository _documentRepository;
        public GetAllArchiveDocumentQueryHandler(
           IArchiveDocumentRepository documentRepository
            )
        {
            _documentRepository = documentRepository;
          
        }
        public async Task<ArchiveDocumentList> Handle(GetAllArchiveDocumentQuery request, CancellationToken cancellationToken)
        {
            return await _documentRepository.GetArchiveDocuments(request.DocumentResource);
        }
    }
}
