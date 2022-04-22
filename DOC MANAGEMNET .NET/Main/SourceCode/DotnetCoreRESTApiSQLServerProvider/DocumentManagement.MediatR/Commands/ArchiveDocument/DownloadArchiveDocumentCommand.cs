using MediatR;
using System;

namespace DocumentManagement.MediatR.Commands
{
    public class DownloadArchiveDocumentCommand : IRequest<string>
    {
        public Guid Id { get; set; }
    }
}
