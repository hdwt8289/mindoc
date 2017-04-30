FROM golang:1.8.1-alpine


ADD . /go/src/github.com/lifei6671/godoc


WORKDIR /go/src/github.com/lifei6671/godoc

RUN chmod +x start.sh

RUN  go build -ldflags "-w" && \
    rm -rf commands controllers models routers search vendor .gitignore .travis.yml Dockerfile gide.yaml LICENSE main.go README.md utils graphics Godeps

CMD ["./start.sh"]