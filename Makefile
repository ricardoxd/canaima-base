# Makefile

SHELL := sh -e

all: test build

test:
	@echo "Nada para comprobar!"

build:
	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/icons/canaima-estilo-visual/
	cp -r pascua.jpg $(DESTDIR)/usr/share/icons/canaima-estilo-visual/

uninstall:

	rm -rf $(DESTDIR)/usr/share/icons/canaima-estilo-visual/pascua.png

clean:

distclean:

reinstall: uninstall install
