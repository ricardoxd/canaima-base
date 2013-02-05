# Makefile

SHELL := sh -e

SCRIPTS = debian/postinst debian/postrm

all: test build

test:

	@printf "Comprobando sintaxis de los scripts de shell ["
	@for SCRIPT in $(SCRIPTS); do \
		sh -n $${SCRIPT}; \
		checkbashisms -f -x $${SCRIPT} || true; \
		printf "."; \
	done
	@printf "]\n"

build:

	@echo "Nada para compilar!"

install:

	@mkdir -p $(DESTDIR)/usr/share/canaima-base
	@mkdir -p $(DESTDIR)/etc/canaima-base/alternatives
	@cp -r alternatives $(DESTDIR)/usr/share/canaima-base/

uninstall:

	@rm -rf $(DESTDIR)/usr/share/canaima-base

clean:

distclean:

reinstall: uninstall install
