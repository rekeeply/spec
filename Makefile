SHELL := /bin/bash

.PHONY: help serve build clean install-hook

help:
	@echo "Available targets:"
	@echo "  make serve                         - Run Hugo local server"
	@echo "  make build                         - Build static site"
	@echo "  make clean                         - Remove generated artifacts"
	@echo "  make install-hook                  - Install commit-msg hook"

serve:
	hugo server -D

build:
	hugo --minify

clean:
	rm -rf public resources/_gen .hugo_build.lock

install-hook:
	ln -sf ../../.githooks/commit-msg .git/hooks/commit-msg
	chmod +x .git/hooks/commit-msg
