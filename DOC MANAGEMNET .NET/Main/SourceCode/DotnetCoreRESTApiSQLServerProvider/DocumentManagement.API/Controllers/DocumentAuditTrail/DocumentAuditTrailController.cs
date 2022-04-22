using System.Threading.Tasks;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Resources;
using DocumentManagement.MediatR.Commands;
using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.StaticFiles;

namespace DocumentManagement.API.Controllers
{
    /// <summary>
    /// DocumentAuditTrail
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class DocumentAuditTrailController : ControllerBase
    {
        public IMediator _mediator { get; set; }
        /// <summary>
        /// DocumentAuditTrail
        /// </summary>
        /// <param name="mediator"></param>
        public DocumentAuditTrailController(
            IMediator mediator
            )
        {
            _mediator = mediator;
        }
        /// <summary>
        /// Get All Document Audit Trail detail
        /// </summary>
        /// <param name="documentResource"></param>
        /// <returns></returns>
        [HttpGet]
        [Produces("application/json", "application/xml", Type = typeof(DocumentAuditTrailList))]
        public async Task<IActionResult> GetDocumentAuditTrails([FromQuery] DocumentResource documentResource)
        {
            var getAllDocumentAuditTrailQuery = new GetAllDocumentAuditTrailQuery
            {
                DocumentResource = documentResource
            };
            var result = await _mediator.Send(getAllDocumentAuditTrailQuery);

            var paginationMetadata = new
            {
                totalCount = result.TotalCount,
                pageSize = result.PageSize,
                skip = result.Skip,
                totalPages = result.TotalPages
            };
            Response.Headers.Add("X-Pagination",
                Newtonsoft.Json.JsonConvert.SerializeObject(paginationMetadata));
            return Ok(result);
        }
        /// <summary>
        /// Add Document Audit Trail
        /// </summary>
        /// <param name="addDocumentAuditTrailCommand"></param>
        /// <returns></returns>
        [HttpPost]
        [Produces("application/json", "application/xml", Type = typeof(DocumentAuditTrailDto))]
        public async Task<IActionResult> AddDocumentAuditTrail(AddDocumentAuditTrailCommand addDocumentAuditTrailCommand)
        {
            var result = await _mediator.Send(addDocumentAuditTrailCommand);
            if (result.StatusCode != 200)
            {
                return StatusCode(result.StatusCode, result);
            }
            return StatusCode(StatusCodes.Status201Created, result);
        }

        /// <summary>
        /// Recently Viewed Document
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Id"></param>
        /// <param name="CreatedBy"></param>
        /// <returns></returns>
        [HttpGet("RecentlyViewedDocuments")]
        [Produces("application/json", "application/xml", Type = typeof(DocumentAuditTrailList))]
        public async Task<IActionResult> GetRecentlyViewedDocuments([FromQuery] DocumentResource documentResource)
        {
            var getRecentlyViewedDocumentQuery = new GetRecentlyViewedDocumentsQuery
            {
                DocumentResource = documentResource
            };
            var result = await _mediator.Send(getRecentlyViewedDocumentQuery);

            var paginationMetadata = new
            {
                totalCount = result.TotalCount,
                pageSize = result.PageSize,
                skip = result.Skip,
                totalPages = result.TotalPages
            };

            Response.Headers.Add("X-Pagination",
                Newtonsoft.Json.JsonConvert.SerializeObject(paginationMetadata));

            return Ok(result);
        }


        /// <summary>
        /// Recently Viewed Document
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Id"></param>
        /// <param name="CreatedBy"></param>
        /// <returns></returns>
        [HttpGet("GetFavouirteDocuments")]
        [Produces("application/json", "application/xml", Type = typeof(DocumentAuditTrailList))]
        public async Task<IActionResult> GetFavouirteDocuments([FromQuery] DocumentResource documentResource)
        {
            var getFavouirteDocumentsQuery = new GetFavouirteDocumentsQuery
            {
                DocumentResource = documentResource
            };
            var result = await _mediator.Send(getFavouirteDocumentsQuery);

            var paginationMetadata = new
            {
                totalCount = result.TotalCount,
                pageSize = result.PageSize,
                skip = result.Skip,
                totalPages = result.TotalPages
            };

            Response.Headers.Add("X-Pagination",
                Newtonsoft.Json.JsonConvert.SerializeObject(paginationMetadata));

            return Ok(result);
        }


        private string GetContentType(string path)
        {
            var provider = new FileExtensionContentTypeProvider();
            if (!provider.TryGetContentType(path, out var contentType))
            {
                contentType = "application/octet-stream";
            }
            return contentType;
        }
    }
}
