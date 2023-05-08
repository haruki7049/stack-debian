FROM debian:latest
RUN apt-get update && apt-get install curl -y
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup

CMD ["stack", "ghci"]
