APP_NAME:=cowboy

UPSTREAM_GIT:=https://github.com/rabbitmq/cowboy.git
UPSTREAM_REVISION:=efbd9133261e1aabf473f2f6f5ab4cbb36062481
RETAIN_ORIGINAL_VERSION:=true
WRAPPER_PATCHES:= \
	0001-R12-remove-all-specs.patch \
	0002-R12-function-literal.patch \
	0003-R12-use-erlang-integer_to_list-and-lists-max.patch \
	0004-R12-a2b-b2a.patch \

# Path include/http.hrl is needed during compilation
INCLUDE_DIRS+=$(CLONE_DIR)

ORIGINAL_APP_FILE:=$(CLONE_DIR)/src/$(APP_NAME).app.src
DO_NOT_GENERATE_APP_FILE=true

define construct_app_commands
	cp $(CLONE_DIR)/LICENSE $(APP_DIR)/LICENSE-ISC-Cowboy
endef
