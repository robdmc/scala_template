clean:
	rm -rf classes/* 2>/dev/null || true

./classes/fake_artifact: $(wildcard src/*.scala)
	scalac -d ./classes ./src/*.scala
	touch ./classes/fake_artifact

all: ./classes/fake_artifact
