FROM debian:latest
LABEL MAINTAINER="https://github.com/MrAstroOfficial"

WORKDIR /ASTROLEX/
ADD . /ASTROLEX

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./ASTROLEX.sh"]
