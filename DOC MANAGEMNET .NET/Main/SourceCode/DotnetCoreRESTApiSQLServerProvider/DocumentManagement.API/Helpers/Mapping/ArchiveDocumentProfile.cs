using AutoMapper;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.MediatR.Commands;

namespace DocumentManagement.API.Helpers.Mapping
{
    public class ArchiveDocumentProfile: Profile
    {
        public ArchiveDocumentProfile()
        {
            CreateMap<ArchiveDocument, ArchiveDocumentDto>().ReverseMap();
            CreateMap<AddArchiveDocumentCommand, ArchiveDocument>();
            CreateMap<UpdateArchiveDocumentCommand, ArchiveDocument>();
            CreateMap<AddArchiveDocumentToMeCommand, ArchiveDocument>();
        }
    }
}
