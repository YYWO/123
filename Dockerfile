FROM ubuntu
WORKDIR /app
COPY . /app
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r requirements.txt
COPY config.yaml ./resources/
RUN chmod 777 * && \
    cd bin && \
    chmod 777 *
ENTRYPOINT ["/bin/sh", "docker-entrypoint.sh"]
