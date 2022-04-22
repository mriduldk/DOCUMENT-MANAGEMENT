using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace DocumentManagement.Domain.Migrations
{
    public partial class ArchiveDoc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<Guid>(
                name: "ArchiveDocumentId",
                table: "UserNotifications",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "ArchiveDocumentId",
                table: "DocumentUserPermissions",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "ArchiveDocumentId",
                table: "DocumentRolePermissions",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "ArchiveDocumentId",
                table: "DocumentAuditTrails",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "ArchiveDocument",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CategoryId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Url = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DeletedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DeletedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ArchiveDocument", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ArchiveDocument_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ArchiveDocument_Users_CreatedBy",
                        column: x => x.CreatedBy,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "XStudio_Designation_User_Mst_Tbl",
                columns: table => new
                {
                    ID = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ParentID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedOn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedOn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AssignedUserId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IsSystem = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DesignationID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Plant_ID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Organization_ID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Department_ID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DeletedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DeletedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_XStudio_Designation_User_Mst_Tbl", x => x.ID);
                });

            migrationBuilder.CreateTable(
                name: "XStudio_UserRole_Mst_Tbl",
                columns: table => new
                {
                    ID = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ParentID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedOn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedOn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AssignedUserId = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IsSystem = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    RoleID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ModifiedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModifiedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DeletedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DeletedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_XStudio_UserRole_Mst_Tbl", x => x.ID);
                });

            migrationBuilder.CreateIndex(
                name: "IX_UserNotifications_ArchiveDocumentId",
                table: "UserNotifications",
                column: "ArchiveDocumentId");

            migrationBuilder.CreateIndex(
                name: "IX_DocumentUserPermissions_ArchiveDocumentId",
                table: "DocumentUserPermissions",
                column: "ArchiveDocumentId");

            migrationBuilder.CreateIndex(
                name: "IX_DocumentRolePermissions_ArchiveDocumentId",
                table: "DocumentRolePermissions",
                column: "ArchiveDocumentId");

            migrationBuilder.CreateIndex(
                name: "IX_DocumentAuditTrails_ArchiveDocumentId",
                table: "DocumentAuditTrails",
                column: "ArchiveDocumentId");

            migrationBuilder.CreateIndex(
                name: "IX_ArchiveDocument_CategoryId",
                table: "ArchiveDocument",
                column: "CategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_ArchiveDocument_CreatedBy",
                table: "ArchiveDocument",
                column: "CreatedBy");

            migrationBuilder.AddForeignKey(
                name: "FK_DocumentAuditTrails_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentAuditTrails",
                column: "ArchiveDocumentId",
                principalTable: "ArchiveDocument",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DocumentRolePermissions_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentRolePermissions",
                column: "ArchiveDocumentId",
                principalTable: "ArchiveDocument",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_DocumentUserPermissions_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentUserPermissions",
                column: "ArchiveDocumentId",
                principalTable: "ArchiveDocument",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_UserNotifications_ArchiveDocument_ArchiveDocumentId",
                table: "UserNotifications",
                column: "ArchiveDocumentId",
                principalTable: "ArchiveDocument",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_DocumentAuditTrails_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentAuditTrails");

            migrationBuilder.DropForeignKey(
                name: "FK_DocumentRolePermissions_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentRolePermissions");

            migrationBuilder.DropForeignKey(
                name: "FK_DocumentUserPermissions_ArchiveDocument_ArchiveDocumentId",
                table: "DocumentUserPermissions");

            migrationBuilder.DropForeignKey(
                name: "FK_UserNotifications_ArchiveDocument_ArchiveDocumentId",
                table: "UserNotifications");

            migrationBuilder.DropTable(
                name: "ArchiveDocument");

            migrationBuilder.DropTable(
                name: "XStudio_Designation_User_Mst_Tbl");

            migrationBuilder.DropTable(
                name: "XStudio_UserRole_Mst_Tbl");

            migrationBuilder.DropIndex(
                name: "IX_UserNotifications_ArchiveDocumentId",
                table: "UserNotifications");

            migrationBuilder.DropIndex(
                name: "IX_DocumentUserPermissions_ArchiveDocumentId",
                table: "DocumentUserPermissions");

            migrationBuilder.DropIndex(
                name: "IX_DocumentRolePermissions_ArchiveDocumentId",
                table: "DocumentRolePermissions");

            migrationBuilder.DropIndex(
                name: "IX_DocumentAuditTrails_ArchiveDocumentId",
                table: "DocumentAuditTrails");

            migrationBuilder.DropColumn(
                name: "ArchiveDocumentId",
                table: "UserNotifications");

            migrationBuilder.DropColumn(
                name: "ArchiveDocumentId",
                table: "DocumentUserPermissions");

            migrationBuilder.DropColumn(
                name: "ArchiveDocumentId",
                table: "DocumentRolePermissions");

            migrationBuilder.DropColumn(
                name: "ArchiveDocumentId",
                table: "DocumentAuditTrails");
        }
    }
}
