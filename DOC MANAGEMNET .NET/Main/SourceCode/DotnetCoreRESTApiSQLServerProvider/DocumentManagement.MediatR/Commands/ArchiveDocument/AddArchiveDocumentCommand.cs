﻿using DocumentManagement.Data.Dto;
using DocumentManagement.Helper;
using MediatR;
using System;

namespace DocumentManagement.MediatR.Commands
{
    public class AddArchiveDocumentCommand : IRequest<ServiceResponse<ArchiveDocumentDto>>
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public string Url { get; set; }
        public Guid CategoryId { get; set; }
        public Guid Id { get; set; } = Guid.NewGuid();
    }
}
