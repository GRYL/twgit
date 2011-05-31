#!/bin/sh

# Install: sudo make install

ROOT_DIR="`pwd`"

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@echo -e "#!/bin/bash\n/bin/bash \"${ROOT_DIR}/twgit\" "'$$@' > /usr/local/bin/twgit
	chmod 0755 /usr/local/bin/twgit
	cp -f ${ROOT_DIR}/install/.bash_completion /etc/bash_completion.d/twgit

uninstall:
	rm -f ${PREFIX}/bin/twgit
	rm -f /etc/bash_completion.d/twgit