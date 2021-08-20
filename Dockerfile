

FROM ubuntu
MAINTAINER khatri.narang09@gmail.com
RUN yum -y update && \
    yum -y install httpd && \
    yum clean all
COPY ./run.sh /
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["true" , "hello" , "name"]


