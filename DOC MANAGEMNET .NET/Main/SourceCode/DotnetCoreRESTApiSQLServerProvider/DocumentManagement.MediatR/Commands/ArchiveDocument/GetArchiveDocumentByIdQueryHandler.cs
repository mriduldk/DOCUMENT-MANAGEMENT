using AutoMapper;
using DocumentManagement.Data.Dto;
using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Commands
{
    public class GetArchiveDocumentByIdQueryHandler : IRequestHandler<GetArchiveDocumentByIdQuery, ArchiveDocumentDto>
    {
        private readonly IArchiveDocumentRepository _documentRepository;
        private readonly IMapper _mapper;
        public GetArchiveDocumentByIdQueryHandler(
           IArchiveDocumentRepository documentRepository,
             IMapper mapper
            )
        {
            _mapper = mapper;
            _documentRepository = documentRepository;
        }

        public async Task<ArchiveDocumentDto> Handle(GetArchiveDocumentByIdQuery request, CancellationToken cancellationToken)
        {
            var document = await _documentRepository.FindAsync(request.Id);
            var documentDto = _mapper.Map<ArchiveDocumentDto>(document);
            return documentDto;
        }
    }
}
