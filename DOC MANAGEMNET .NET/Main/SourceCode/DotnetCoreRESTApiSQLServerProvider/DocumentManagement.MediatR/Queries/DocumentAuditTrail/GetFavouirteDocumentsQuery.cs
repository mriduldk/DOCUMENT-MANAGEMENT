using DocumentManagement.Data.Resources;
using DocumentManagement.Repository;
using MediatR;


namespace DocumentManagement.MediatR.Queries
{
    public class GetFavouirteDocumentsQuery : IRequest<DocumentAuditTrailList>
    {
        public DocumentResource DocumentResource { get; set; }
    }
}
