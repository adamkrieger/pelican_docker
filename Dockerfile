FROM python:2

WORKDIR /usr/src

COPY ./requirements.txt /usr/src/

RUN ["pip", "install", "-r", "requirements.txt"]

VOLUME ["/usr/src"]

CMD ["pelican", "content"]
