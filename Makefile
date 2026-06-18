.PHONY: all clean dist install uninstall aur

PKGNAME = plasminal
VERSION = 1.0.0
TARBALL = $(PKGNAME)-$(VERSION).tar.gz
BUILDDIR = /tmp/$(PKGNAME)-dist-$$

all: dist

dist: clean
	rm -rf $(BUILDDIR)
	mkdir -p $(BUILDDIR)/contents/ui/config
	mkdir -p $(BUILDDIR)/contents/config
	mkdir -p $(BUILDDIR)/contents/images
	mkdir -p $(BUILDDIR)/.github/ISSUE_TEMPLATE
	mkdir -p $(BUILDDIR)/.github/workflows
	cp metadata.json $(BUILDDIR)/
	cp README.md $(BUILDDIR)/
	cp CHANGELOG.md $(BUILDDIR)/
	cp CONTRIBUTING.md $(BUILDDIR)/
	cp LICENSE $(BUILDDIR)/
	cp install.sh $(BUILDDIR)/
	cp uninstall.sh $(BUILDDIR)/
	cp icon.svg $(BUILDDIR)/
	cp contents/ui/main.qml $(BUILDDIR)/contents/ui/
	cp contents/ui/config/ConfigGeneral.qml $(BUILDDIR)/contents/ui/config/
	cp contents/config/main.xml $(BUILDDIR)/contents/config/
	cp contents/images/icon.svg $(BUILDDIR)/contents/images/
	cp .github/ISSUE_TEMPLATE/bug_report.md $(BUILDDIR)/.github/ISSUE_TEMPLATE/
	cp .github/ISSUE_TEMPLATE/feature_request.md $(BUILDDIR)/.github/ISSUE_TEMPLATE/
	cp .github/PULL_REQUEST_TEMPLATE.md $(BUILDDIR)/.github/
	chmod +x $(BUILDDIR)/install.sh $(BUILDDIR)/uninstall.sh
	tar czf $(TARBALL) -C $(BUILDDIR) .
	rm -rf $(BUILDDIR)
	@echo "Created $(TARBALL)"

install:
	./install.sh

uninstall:
	./uninstall.sh

aur: dist
	@echo "To publish to AUR:"
	@echo "1. Copy PKGBUILD and $(TARBALL) to a new directory"
	@echo "2. Update sha256sums with: updpkgsums"
	@echo "3. Test with: makepkg -si"
	@echo "4. Publish to AUR"

clean:
	rm -rf /tmp/$(PKGNAME)-dist-* $(TARBALL)
