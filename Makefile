SHELL   = /bin/sh
PREFIX	= /usr/local
SOURCES	= ca-cert.bash
PROGRAM = ca-cert

execdir=$(PREFIX)/bin

all: $(PROGRAM)

$(PROGRAM): $(SOURCES)
	rm -rf $@
	cat $(SOURCES) > $@+
	bash -n $@+
	mv $@+ $@
	chmod 0755 $@

install: $(PROGRAM)
	install -d "$(execdir)"
	install -m 0755 $(PROGRAM) "$(execdir)/$(PROGRAM)"

run: all
	./$(PROGRAM)

uninstall:
	rm -f "$(execdir)/$(PROGRAM)"

package: $(PROGRAM)
	mkdir -p ./pkg
	cp $(PROGRAM) ./pkg/$(PROGRAM)-$(shell ./$(PROGRAM) --version)

publish: package
	git add ./pkg
	git commit -m "[pkg] v$(shell ./$(PROGRAM) --version)"
	git tag v$(shell ./$(PROGRAM) --version)
	git push --tags

clean:
	rm -f $(PROGRAM)

.PHONY: run install uninstall clean
