using AutoMapper;
using DocumentManagement.Data.Dto;
using DocumentManagement.Data.Entities;
using DocumentManagement.MediatR.Queries;
using DocumentManagement.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace DocumentManagement.MediatR.Handlers
{
    public class GetAllCategoryQueryHandler : IRequestHandler<GetAllCategoryQuery, List<CategoryDto>>
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly IUserRoleRepository _userRoleRepository;
        private readonly IMapper _mapper;
        public GetAllCategoryQueryHandler(
           ICategoryRepository categoryRepository,
           IUserRoleRepository userRoleRepository,
            IMapper mapper
            )
        {
            _categoryRepository = categoryRepository;
            _userRoleRepository = userRoleRepository;
            _mapper = mapper;
        }
        public async Task<List<CategoryDto>> Handle(GetAllCategoryQuery request, CancellationToken cancellationToken)
        {
            var entities = new List<Category>();
            var filterEntities = new List<Category>();
            if (request.IsParentOnly)
            {
                entities = await _categoryRepository.All.Where(cs => !cs.ParentId.HasValue).ToListAsync();

                var deptId = new Guid("9CC497F5-1736-4BC6-84A8-316FD983B732");
                filterEntities = entities.FindAll(c => c.ParentId == deptId && c.ParentId != null);
            }
            else
            {
                var userId = new Guid("DBF8626E-E34E-47BF-A537-7892B5B6C010");
                var deptAndArea = _userRoleRepository.FindBy(c => c.UserId == userId).FirstOrDefault(); ;

                entities = await _categoryRepository.All.ToListAsync();
                var deptId = new Guid(deptAndArea.DepartmentId);
                var plantId = new Guid(deptAndArea.PlantId);
                filterEntities = entities.FindAll(c => c.ParentId == deptId || c.Id == deptId);

            }
            return _mapper.Map<List<CategoryDto>>(filterEntities);
        }
    }
}
