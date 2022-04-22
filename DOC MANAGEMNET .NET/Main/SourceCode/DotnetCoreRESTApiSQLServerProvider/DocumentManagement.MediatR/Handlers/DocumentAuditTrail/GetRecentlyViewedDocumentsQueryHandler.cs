using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class GetRecentlyViewedDocumentsQueryHandler : IRequestHandler<GetRecentlyViewedDocumentsQuery, DocumentAuditTrailList> 
    {
        private readonly IDocumentAuditTrailRepository _documentAuditTrailRepository;
        public GetRecentlyViewedDocumentsQueryHandler(IDocumentAuditTrailRepository documentAuditTrailRepository)
        {
            _documentAuditTrailRepository = documentAuditTrailRepository;
        }

        public async Task<DocumentAuditTrailList> Handle(GetRecentlyViewedDocumentsQuery request, CancellationToken cancellationToken)
        {
            return await _documentAuditTrailRepository.GetRecentlyViewedDocuments(request.DocumentResource);
        }
    }
}
