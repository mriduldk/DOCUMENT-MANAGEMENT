using DocumentManagement.Common.GenericRepository;
using DocumentManagement.Data.Entities;
using DocumentManagement.Data.Resources;
using System;
using System.Threading.Tasks;

namespace DocumentManagement.Repository
{
    public interface IDocumentAuditTrailRepository : IGenericRepository<DocumentAuditTrail>
    {
        Task<DocumentAuditTrailList> GetDocumentAuditTrails(DocumentResource documentResource);

        Task<DocumentAuditTrailList> GetRecentlyViewedDocuments(DocumentResource documentResource);

        Task<DocumentAuditTrailList> GetFavouirteDocuments(DocumentResource documentResource);
    }
}
