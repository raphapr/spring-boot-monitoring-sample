VERSION = v0.0.4
GIT_BRANCH 	= $(shell git rev-parse --abbrev-ref HEAD)

.PHONY: release
release:
ifeq ($(GIT_BRANCH),master)
	@(echo "-> Creating tag '$(VERSION)'")
	@(git tag $(VERSION))
	@(echo "-> Pushing '$(VERSION)'")
	@(git push origin $(VERSION))
	@(git push origin master)
else
	@echo "You need to be in branch master"
endif
