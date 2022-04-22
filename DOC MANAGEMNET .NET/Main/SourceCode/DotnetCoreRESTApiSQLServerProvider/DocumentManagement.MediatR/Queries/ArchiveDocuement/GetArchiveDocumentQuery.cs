using DocumentManagement.Data.Dto;
using DocumentManagement.Helper;
using MediatR;
using System;

namespace DocumentManagement.MediatR.Queries
{
    public class GetArchiveDocumentQuery : IRequest<ServiceResponse<ArchiveDocumentDto>>
    {
        public Guid Id { get; set; }
    }
}
