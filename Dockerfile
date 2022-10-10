FROM golang:alpine3.16

RUN mkdir /app

WORKDIR /app

COPY . .

RUN go mod download

RUN go mod verify

RUN go build -o main .

EXPOSE 8000

CMD [ "./main" ]