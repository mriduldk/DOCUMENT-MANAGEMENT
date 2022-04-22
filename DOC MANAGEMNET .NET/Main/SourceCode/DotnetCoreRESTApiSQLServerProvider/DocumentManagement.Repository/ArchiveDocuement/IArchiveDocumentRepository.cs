using DocumentManagement.Common.GenericRepository;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.Data.Resources;
using System;
using System.Threading.Tasks;

namespace DocumentManagement.Repository
{
    public interface IArchiveDocumentRepository : IGenericRepository<ArchiveDocument>
    {
        Task<ArchiveDocumentList> GetArchiveDocuments(DocumentResource documentResource);
        Task<ArchiveDocumentList> GetArchiveDocumentsLibrary(string email, DocumentResource documentResource);
        Task<ArchiveDocumentDto> GetArchiveDocumentById(Guid Id);
    }
}
