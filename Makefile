.PHONY = build lint
build: lint
	buf generate proto

lint:
	buf lint proto
