﻿using AutoMapper;
using DocumentManagement.Common.UnitOfWork;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.Domain;
using DocumentManagement.Helper;
using DocumentManagement.MediatR.Commands;
using DocumentManagement.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class AddArchiveDocumentCommandHandler : IRequestHandler<AddArchiveDocumentCommand, ServiceResponse<ArchiveDocumentDto>>
    {
        private readonly IArchiveDocumentRepository _documentRepository;
        private readonly IUnitOfWork<DocumentContext> _uow;
        private readonly IMapper _mapper;
        private readonly UserInfoToken _userInfo;
        public AddArchiveDocumentCommandHandler(
            IArchiveDocumentRepository documentRepository,
            IMapper mapper,
            IUnitOfWork<DocumentContext> uow,
            UserInfoToken userInfo
            )
        {
            _documentRepository = documentRepository;
            _mapper = mapper;
            _uow = uow;
            _userInfo = userInfo;
        }

        public async Task<ServiceResponse<ArchiveDocumentDto>> Handle(AddArchiveDocumentCommand request, CancellationToken cancellationToken)
        {
            var entityExist = await _documentRepository.FindBy(c => c.Name == request.Name).FirstOrDefaultAsync();
            if (entityExist != null)
            {
                return ServiceResponse<ArchiveDocumentDto>.ReturnFailed(409, "Document already exist.");
            }
            var entity = _mapper.Map<ArchiveDocument>(request);
            entity.CreatedBy = Guid.Parse(_userInfo.Id);
            entity.CreatedDate = DateTime.Now;
            _documentRepository.Add(entity);
            if (await _uow.SaveAsync() <= 0)
            {
                return ServiceResponse<ArchiveDocumentDto>.ReturnFailed(500, "Error While Added Document");
            }
            var entityDto = _mapper.Map<ArchiveDocumentDto>(entity);
            return ServiceResponse<ArchiveDocumentDto>.ReturnResultWith200(entityDto);
        }
    }
}
