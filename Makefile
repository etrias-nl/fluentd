VERSION=1.6.0
TAGPREFIX=etriasnl/fluentd
VERSIONTAG=${TAGPREFIX}:${VERSION}
LATESTTAG=${TAGPREFIX}:latest

build:
	docker build --progress=plain -t ${VERSIONTAG} -t ${LATESTTAG} .
run:
	docker run -it ${VERSIONTAG} bash
fresh-run: build run
release: build
	docker push ${VERSIONTAG}
	docker push ${LATESTTAG}