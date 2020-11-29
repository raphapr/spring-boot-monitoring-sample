VERSION = v1.1

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
