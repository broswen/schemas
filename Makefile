.PHONY = build lint breaking
build: format lint breaking
	buf generate

lint:
	buf lint

breaking:
	buf breaking --against ".git#branch=main"

format:
	buf format -w