﻿namespace DocumentManagement.Data.Dto
{
    public enum ArchiveDocumentOperation
    {
        Read = 1,
        Created = 2,
        Modified = 3,
        Deleted = 4,
        Add_Permission = 5,
        Remove_Permission = 6,
        Send_Email = 7,
        Download= 8
    }
}