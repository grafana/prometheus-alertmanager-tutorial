FROM golang:1.24-bullseye@sha256:2cdc80dc25edcb96ada1654f73092f2928045d037581fa4aa7c40d18af7dd85a

WORKDIR /app
 
COPY go.mod ./
COPY go.sum ./
 
RUN go mod download

COPY *.go ./
 
RUN go build -o /server
 
EXPOSE 8090
 
CMD [ "/server" ]