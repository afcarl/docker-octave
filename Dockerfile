FROM debian:jessie

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
        gnuplot \
        less \
        octave \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'graphics_toolkit("gnuplot");' >> ~/.octaverc
