# specify the base image for subsequent instruction and must be the first command.
FROM centos:7

# Add a tag
LABEL maintainer="our awesome students"

# update our packages RUN execute command in a shell
RUN yum update -y && yum clean all

# Install apache --> create /var/www/html/ 
RUN yum install -y httpd

# Copy the application inside the container
COPY index.html /var/www/html/ 

# port on which the container should listen on. Back end port
EXPOSE 80 

# Run httpd (systemctl start httpd) # when the container starts, plz start apache too.
ENTRYPOINT [ "/usr/sbin/httpd" ] 


# we don't want the container to exit (Similar to systemctl enable httpd)
# run the container in the background
CMD [ "-D", "FOREGROUND" ]

