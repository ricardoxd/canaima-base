# Makefile

SHELL := sh -e

SCRIPTS = debian/postinst debian/postrm

all: test build

test:

	@echo -n "\n===== Comprobando posibles errores de sintaxis en los scripts de mantenedor =====\n\n"

	@for SCRIPT in $(SCRIPTS); \
	do \
		echo -n "$${SCRIPT}\n"; \
		bash -n $${SCRIPT}; \
	done

	@echo -n "\n=================================================================================\nHECHO!\n\n"

build:

	@echo "Nada para compilar!"

install:

	mkdir -p $(DESTDIR)/usr/share/canaima-base
	cp -r config/* $(DESTDIR)/usr/share/canaima-base/

uninstall:

	rm -rf $(DESTDIR)/usr/share/canaima-base

clean:

distclean:

reinstall: uninstall install
