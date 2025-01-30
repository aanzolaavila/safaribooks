FROM lscr.io/linuxserver/calibre:latest

WORKDIR /app

RUN apt-get update && apt-get install -y python3-pip

COPY requirements.txt .
RUN python3 -m pip install --break-system-packages -r requirements.txt

COPY automate.sh safaribooks.py register_user.py sso_cookies.py ./

ENTRYPOINT [ "/app/automate.sh" ]
