

FROM ubuntu
MAINTAINER khatri.narang09@gmail.com
RUN apt-get -y update && \
    apt-get -y install httpd && \
    apt-get clean all
COPY ./run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["true" , "hello" , "name"]


