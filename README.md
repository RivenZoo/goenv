# goenv
A shell tool to init a private project gopath dir

# Usage

## activiate

* copy shell script `activiate` to project directory
* execute command to init project gopath enviroment

	$ `source activiate`

* execute command to exit project gopath enviroment

	$ `deactiviate`

## vendor.sh

* copy `vendor.sh` to project directory

	$ `sh vendor.sh help`

	```
	# vendor.sh init
	# vendor.sh add module_url(module path | git url) [git_spec(tags | branch | commit)]
	# vendor.sh update module_import_path [git_spec(tags | branch | commit)]
	# vendor.sh rm module_import_path
	```

# Detail

A private gopath will be created at `${HOME}/.goenv/{project_private_dir}`.
Then set `GOPATH` to `${HOME}/.goenv/{project_private_dir}:${GOPATH}`.

`vendor.sh` use `govendor` to manage dependency.