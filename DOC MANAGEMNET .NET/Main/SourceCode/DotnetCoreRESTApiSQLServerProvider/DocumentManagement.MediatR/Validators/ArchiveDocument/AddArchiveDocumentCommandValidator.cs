using DocumentManagement.MediatR.Commands;
using FluentValidation;

namespace DocumentManagement.MediatR.Validators
{
    public class AddArchiveDocumentCommandValidator : AbstractValidator<AddArchiveDocumentCommand>
    {
        public AddArchiveDocumentCommandValidator()
        {
            RuleFor(c => c.Name).NotEmpty().WithMessage("Name is required");
            RuleFor(c => c.Url).NotEmpty().WithMessage("Document is required");
        }
    }
}
