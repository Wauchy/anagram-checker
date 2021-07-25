FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . ./

RUN go build -o /anagramchecker

EXPOSE 9000:9000

CMD [ "/anagramchecker" ]