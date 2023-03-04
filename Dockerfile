FROM lscr.io/linuxserver/calibre:latest

WORKDIR /app

RUN apt-get update && apt-get install -y python3-pip

COPY . .
RUN python3 -m pip install -r requirements.txt

ENTRYPOINT [ "/app/automate.sh" ]
