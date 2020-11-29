VERSION = v0.0.3
GIT_BRANCH 	= $(shell git rev-parse --abbrev-ref HEAD)

.PHONY: release
release:
ifeq ($(GIT_BRANCH),master)
	@(echo "-> Creating tag '$(VERSION)'")
	@(git tag $(VERSION))
	@(echo "-> Pushing tag '$(VERSION)'")
	@(git push origin $(VERSION))
else
	@echo "You need to be in branch master"
endif
