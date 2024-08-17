MKFILE_DIR := $(abspath $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))))

# Make Terraform Documentation
.PHONY: docs
docs:
	  terraform-docs markdown table --output-file README.md --output-mode inject . \
	  && cd examples/complete && terraform-docs markdown table --output-file README.md --output-mode inject . \
	  && cd $(MKFILE_DIR)

.Phony: format
format:
	terraform fmt -recursive

.PHONY: fixcommit
fixcommit:
	pre-commit run --all-files

.PHONY: diagram
diagram:
	python3 diagram.py

.PHONY: tflint
tflint:
	tflint --recursive
