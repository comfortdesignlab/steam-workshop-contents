FROM golang:1.20.5 as claat

RUN apt-get update && apt-get install -y --no-install-recommends \
    git

RUN go install github.com/googlecodelabs/tools/claat@latest

ENTRYPOINT ["claat"]
