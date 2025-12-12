# base image
FROM fedora:latest

#upgrade de system and installl the tools
RUN dnf -y update && \
    dnf -y install tuxpaint vim httpd && \
    dnf clean all

#copy the file myinfo.html into the container 
COPY myinfo.html /var/www/html/myinfo.html

#Expose the port 80

EXPOSE 80

#startt httpd in the foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

