FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget curl vim gnupg
#to install solutions_1.0
RUN apt-get install -y gnupg

RUN cd /tmp && wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i /tmp/erlang-solutions_1.0_all.deb

RUN apt-get update && apt-get install -y esl-erlang elixir

RUN mkdir -p /learn-elixir

WORKDIR /learn-elixir

