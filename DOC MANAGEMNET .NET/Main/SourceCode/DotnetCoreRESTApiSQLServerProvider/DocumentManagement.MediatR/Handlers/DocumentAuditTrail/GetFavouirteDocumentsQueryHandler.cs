using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class GetFavouirteDocumentsQueryHandler : IRequestHandler<GetFavouirteDocumentsQuery, DocumentAuditTrailList> 
    {
        private readonly IDocumentAuditTrailRepository _documentAuditTrailRepository;
        public GetFavouirteDocumentsQueryHandler(IDocumentAuditTrailRepository documentAuditTrailRepository)
        {
            _documentAuditTrailRepository = documentAuditTrailRepository;
        }

        public async Task<DocumentAuditTrailList> Handle(GetFavouirteDocumentsQuery request, CancellationToken cancellationToken)
        {
            return await _documentAuditTrailRepository.GetFavouirteDocuments(request.DocumentResource);
        }
    }
}
