APP_NAME:=cowboy
DEPS:=cowlib-wrapper ranch-wrapper

UPSTREAM_GIT:=https://github.com/ninenines/cowboy.git
UPSTREAM_REVISION:=b8e4115eb13488c517d8d8ef33c47d0eaa7838c6 # 1.0.3
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:=10-remove-crypto-dependency.patch

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-ISC-Cowboy
endef
