FROM python:latest

RUN mkdir /bot && chmod 777 /bot

WORKDIR /bot

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3","-m","bot"]
