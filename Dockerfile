

FROM ubuntu
MAINTAINER khatri.narang09@gmail.com
RUN apt -y update && \
    apt -y install httpd && \
    apt clean all
COPY ./run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["true" , "hello" , "name"]


