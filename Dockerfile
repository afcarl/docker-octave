FROM debian:jessie

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y octave \
    && rm -rf /var/lib/apt/lists/*