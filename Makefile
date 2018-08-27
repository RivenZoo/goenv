.PHONY: package

BUNDLE = bundle.tar.gz
BUNDLE_FILES = activiate make_gopath.mk vendor.sh

package: $(BUNDLE)

$(BUNDLE): $(BUNDLE_FILES)
	tar zcvf $@ $?

