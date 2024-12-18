# phony targets
.PHONY: all install uninstall

all:
	@echo "Run 'sudo make install' to install sentenceLength"
	@echo "(only supported for MacOS and Linux.)"

install:
	@mkdir -p /bin /usr/bin /usr/local/bin /usr/share/man/man1
	@cp sentenceLength /bin
	@cp sentenceLength /usr/bin
	@cp sentenceLength /usr/local/bin
	@cp sentenceLength.1 /usr/share/man/man1
	@chmod 755 /bin/sentenceLength
	@chmod 755 /usr/bin/sentenceLength
	@chmod 755 /usr/local/bin/sentenceLength
	@chmod 644 /usr/share/man/man1/sentenceLength.1
	@mandb
	@echo "[i] Finished installation"

uninstall:
	@rm /bin/sentenceLength /usr/bin/sentenceLength /usr/local/bin/sentenceLength /usr/share/man/man1/sentenceLength.1
	@mandb
	@echo "[i] Finished removal"
