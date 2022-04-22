using DocumentManagement.Data.Resources;
using DocumentManagement.Repository;
using MediatR;

namespace DocumentManagement.MediatR.Queries
{
    public class GetAllArchiveDocumentQuery : IRequest<ArchiveDocumentList>
    {
        public DocumentResource DocumentResource { get; set; }
    }
}
