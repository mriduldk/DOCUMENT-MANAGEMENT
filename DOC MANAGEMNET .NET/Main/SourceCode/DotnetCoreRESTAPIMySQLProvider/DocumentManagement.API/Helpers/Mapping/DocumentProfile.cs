using AutoMapper;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.MediatR.Commands;

namespace DocumentManagement.API.Helpers.Mapping
{
    public class DocumentProfile : Profile
    {
        public DocumentProfile()
        {
            CreateMap<Document, DocumentDto>().ReverseMap();
            CreateMap<AddDocumentCommand, Document>();
            CreateMap<UpdateDocumentCommand, Document>();
            CreateMap<AddDocumentToMeCommand, Document>();
        }
    }
}
