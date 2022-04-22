using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DocumentManagement.Data.Entities
{
    public class DesginationUserMstTable : BaseEntity
    {
        public string ID { get; set; }
        public string ParentID { get; set; }
        public string CreatedOn { get; set; }
        public string ModifiedOn { get; set; }
        public string AssignedUserId { get; set; }
        public string IsSystem { get; set; }
        public string UserID { get; set; }
        public string DesignationID { get; set; }
        public string Plant_ID { get; set; }
        public string Organization_ID { get; set; }
        public string Department_ID { get; set; }
    }
}
