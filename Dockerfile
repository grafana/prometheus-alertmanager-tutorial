FROM golang:1.21-bullseye@sha256:40a67e6626bead90d5c7957bd0354cfeb8400e61acc3adc256e03252630014a6

WORKDIR /app
 
COPY go.mod ./
COPY go.sum ./
 
RUN go mod download

COPY *.go ./
 
RUN go build -o /server
 
EXPOSE 8090
 
CMD [ "/server" ]