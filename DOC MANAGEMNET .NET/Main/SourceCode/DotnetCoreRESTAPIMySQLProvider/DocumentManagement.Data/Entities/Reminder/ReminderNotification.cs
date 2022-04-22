using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace DocumentManagement.Data
{
    public class ReminderNotification
    {
        public Guid Id { get; set; }
        public Guid ReminderId { get; set; }
        public string Subject { get; set; }
        public string Description { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime FetchDateTime { get; set; }
        public bool IsDeleted { get; set; }
        public bool IsEmailNotification { get; set; }
        public Reminder Reminder { get; set; }
    }
}
