FROM alpine:latest

RUN apk add bash
RUN apk add git
RUN cd / && \
    git clone https://github.com/hypermail-project/hypermail.git
RUN apk add --update alpine-sdk linux-headers byacc
RUN cd /hypermail && \
    ./configure && \
    make
RUN cd /hypermail && \
    make && \
    bash -c '$(make install); exit 0'
ADD app /app/
ENTRYPOINT ["/app/entrypoint.sh"]