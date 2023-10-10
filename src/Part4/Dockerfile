FROM nginx

RUN apt-get update && apt-get install -y \
	gcc \
	spawn-fcgi \
	libfcgi-dev

COPY ./files/nginx/nginx.conf /etc/nginx/
COPY ./files/main.c /home/
COPY script.sh /home/

RUN chmod +x /home/script.sh

CMD ["sh", "/home/script.sh"]
