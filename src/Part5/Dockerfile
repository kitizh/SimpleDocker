FROM nginx

COPY script.sh /
COPY files/main.c /
COPY files/nginx/nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && \
	apt-get install -y gcc spawn-fcgi libfcgi-dev && \
	rm -rf /var/lib/apt/lists && \
	chmod +x script.sh && \
	chmod 777 /var/cache/nginx/ /var/run/ && \
	gcc main.c -lfcgi

USER nginx

CMD ["sh", "script.sh"]
