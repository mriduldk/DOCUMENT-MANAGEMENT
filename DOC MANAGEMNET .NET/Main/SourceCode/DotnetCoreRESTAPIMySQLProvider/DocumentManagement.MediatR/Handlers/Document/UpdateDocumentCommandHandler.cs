using AutoMapper;
using DocumentManagement.Common.UnitOfWork;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.Domain;
using DocumentManagement.MediatR.Commands;
using DocumentManagement.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class UpdateDocumentCommandHandler : IRequestHandler<UpdateDocumentCommand, DocumentDto>
    {
        private readonly IDocumentRepository _documentRepository;
        private readonly IUnitOfWork<DocumentContext> _uow;
        private readonly IMapper _mapper;
        public UpdateDocumentCommandHandler(
           IDocumentRepository documentRepository,
            IMapper mapper,
            IUnitOfWork<DocumentContext> uow
            )
        {
            _documentRepository = documentRepository;
            _mapper = mapper;
            _uow = uow;
        }

        public async Task<DocumentDto> Handle(UpdateDocumentCommand request, CancellationToken cancellationToken)
        {
            var entityExist = await _documentRepository.FindBy(c => c.Name == request.Name && c.Id!= request.Id).FirstOrDefaultAsync();
            if (entityExist != null)
            {
                var errorDto = new DocumentDto
                {
                    StatusCode = 409,
                    Messages = new List<string> { "Document already exist." }
                };
                return errorDto;
            }
            var entity = _mapper.Map<Document>(request);
            entityExist = await _documentRepository.FindBy(v => v.Id == request.Id).FirstOrDefaultAsync();
            entity.CreatedBy = entityExist.CreatedBy;
            entity.CreatedDate = entityExist.CreatedDate;
            entity.Url = entityExist.Url;
            _documentRepository.Update(entity);
            if (await _uow.SaveAsync() <= 0)
            {
                var errorDto = new DocumentDto
                {
                    StatusCode = 500,
                    Messages = new List<string> { "An unexpected fault happened. Try again later." }
                };
                return errorDto;
            }
            var entityDto = _mapper.Map<DocumentDto>(entity);
            return entityDto;
        }
    }
}
