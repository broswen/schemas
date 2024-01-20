.PHONY = build lint breaking
build: format lint breaking
	buf generate protos

lint:
	buf lint protos

breaking:
	buf breaking protos --against ".git#branch=main"

format:
	buf format -w protos
