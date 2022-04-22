using MediatR;
using System;

namespace DocumentManagement.MediatR.Queries
{
    public class GetIsDownloadFlagArchiveDocumentQuery : IRequest<bool>
    {
        public Guid DocumentId { get; set; }
    }
}
