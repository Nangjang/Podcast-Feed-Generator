FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-yaml \
    git

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]