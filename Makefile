JADE = ./node_modules/.bin/jade

.PHONY: dependencies install-pre-commit-hook

index.html: index.jade
	@$(JADE) index.jade $@

dependencies:
	@npm install .

install-pre-commit-hook:
	@(echo make > .git/hooks/pre-commit && chmod +x .git/hooks/pre-commit)
