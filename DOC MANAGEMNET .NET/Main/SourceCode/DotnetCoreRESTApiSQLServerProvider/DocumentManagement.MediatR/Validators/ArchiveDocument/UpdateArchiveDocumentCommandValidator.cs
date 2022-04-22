﻿using DocumentManagement.MediatR.Commands;
using FluentValidation;

namespace DocumentManagement.MediatR.Validators
{
    public class UpdateArchiveDocumentCommandValidator : AbstractValidator<UpdateArchiveDocumentCommand>
    {
        public UpdateArchiveDocumentCommandValidator()
        {
            RuleFor(c => c.Id).NotEmpty().WithMessage("Id is required");
            RuleFor(c => c.Name).NotEmpty().WithMessage("Name is required");
        }
    }
}
