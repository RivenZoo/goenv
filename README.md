# goenv
A shell tool to init a private project gopath dir

# Usage

* copy shell script `activiate` to project directory
* execute command to init project gopath enviroment

	$ `source activiate`

* execute command to exit project gopath enviroment

	$ `deactiviate`

# Detail

A private gopath will be created at `${HOME}/.goenv/{project_private_dir}`.
Then set `GOPATH` to `${HOME}/.goenv/{project_private_dir}:${GOPATH}`.
