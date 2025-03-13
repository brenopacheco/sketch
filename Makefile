.PHONE: help version build install

PREFIX         = /usr
DESTDIR        = $(shell pwd)/build

VERSION=$(shell ./sketch.pl --version | sed 's/^v//')
GIT_SHA=$(shell git rev-parse --short HEAD)

help:
	@echo "Help:"
	@echo "  - version :: output SemVer"
	@echo "  - build   :: build man page"
	@echo "  - install :: install package"

version:
	@echo "${VERSION}+${GIT_SHA}"

build: sketch.pl sketch.1 LICENSE

sketch.1: sketch.pl
	pod2man sketch.pl > sketch.1

install: build
	mkdir -p "${DESTDIR}${PREFIX}/bin"
	cp -f sketch.pl "${DESTDIR}${PREFIX}/bin/sketch"
	chmod 755 "${DESTDIR}${PREFIX}/bin/sketch"
	mkdir -p "${DESTDIR}${PREFIX}/share/man/man1"
	tar -czf "${DESTDIR}${PREFIX}/share/man/man1/sketch.1.gz" sketch.1
	chmod 644 "${DESTDIR}${PREFIX}/share/man/man1/sketch.1.gz"
	mkdir -p "${DESTDIR}${PREFIX}/share/licenses/sketch"
	cp -f LICENSE "${DESTDIR}${PREFIX}/share/licenses/sketch/LICENSE"
	chmod 644 "${DESTDIR}${PREFIX}/share/licenses/sketch/LICENSE"
