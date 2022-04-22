using DocumentManagement.Data.Dto;
using MediatR;
using System;

namespace DocumentManagement.MediatR.Queries
{
    public class GetArchiveDocumentByIdQuery : IRequest<ArchiveDocumentDto>
    {
        public Guid Id { get; set; }
    }
}
