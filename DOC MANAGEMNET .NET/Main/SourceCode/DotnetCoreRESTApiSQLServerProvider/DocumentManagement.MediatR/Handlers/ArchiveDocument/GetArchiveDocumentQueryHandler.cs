using AutoMapper;
using DocumentManagement.Data.Dto;
using DocumentManagement.Helper;
using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class GetArchiveDocumentQueryHandler : IRequestHandler<GetArchiveDocumentQuery, ServiceResponse<ArchiveDocumentDto>>
    {
        private readonly IArchiveDocumentRepository _documentRepository;
        private readonly IMapper _mapper;
        private readonly IUserNotificationRepository _userNotificationRepository;
        public GetArchiveDocumentQueryHandler(
           IArchiveDocumentRepository documentRepository,
             IMapper mapper,
             IUserNotificationRepository userNotificationRepository
            )
        {
            _mapper = mapper;
            _documentRepository = documentRepository;
            _userNotificationRepository = userNotificationRepository;
        }
        public async Task<ServiceResponse<ArchiveDocumentDto>> Handle(GetArchiveDocumentQuery request, CancellationToken cancellationToken)
        {
            var entity = await _documentRepository.GetArchiveDocumentById(request.Id);
            // mark notification as read.
            await _userNotificationRepository.MarkAsReadByDocumentId(request.Id);
            if (entity != null)
                return ServiceResponse<ArchiveDocumentDto>.ReturnResultWith200(entity);
            else
                return ServiceResponse<ArchiveDocumentDto>.ReturnFailed(404, "Document is not found.");
        }
    }
}
