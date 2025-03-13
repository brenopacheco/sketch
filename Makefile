.PHONE: help version build install

help:
	@echo " Help:"
	@echo "  - version :: run all install tasks"
	@echo "  - build   :: run tasks interactiverly"
	@echo "  - install :: fzf pick task to run"

version:
	@./sketch.pl --version

usage:
	@pod2text sketch.pl

sketch.1: sketch.pl
	@pod2man sketch.pl > sketch.1

