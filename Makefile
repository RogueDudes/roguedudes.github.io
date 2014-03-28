JADE = ./node_modules/.bin/jade

.PHONY: dependencies install-pre-commit-hook

index.html: index.jade
	@$(JADE) index.jade $@

watch:
	@watch -n0.25 make index.html

dependencies:
	@npm install .

install-pre-commit-hook:
	@(echo make > .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit)
