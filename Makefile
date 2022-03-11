now		:= $(shell date +%s)
rawbindir	:= ${HOME}/bin/tools.${now}
bindir		:= ${HOME}/bin/tools

all:
	@echo use make install to install

install:
	mkdir -p "${rawbindir}"
	rm -f ${bindir}
	ln -s "${rawbindir}" "${bindir}"
	for file in bin/sh/* ; do cp "$${file}" "${rawbindir}" ; done
