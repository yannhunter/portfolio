FROM ubuntu
LABEL maintainer=" yannick Ekongue(ekongue@gmail.com)"
WORKDIR /var/www/html
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git vim
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/yannhunter/portfolio.git /var/www/html/
ENTRYPOINT [ "/usr/sbin/nginx","-g","daemon off;" ]

