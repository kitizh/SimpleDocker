FROM nginx:latest

USER root

COPY nginx/nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && \
	apt-get install -y gcc spawn-fcgi libfcgi-dev && \
	rm -rf /var/lib/apt/lists
