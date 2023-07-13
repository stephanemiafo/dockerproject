FROM nginx
LABEL owner="Patrick" 
# CREATE THE DIRECTORY PATH WHERE THE APPLICATION FILES WILL BE CREATED.
ENV HOME=/nginx                    
# It is best practice to set WORKDIR explicitely
WORKDIR /nginx
# ADDING THE FULLY UNPRIVILEGE USER "PATRICK" TO A GROUP THAT I WILL CREATE
# THIS MUST BE DONE TO AVOID LAUNCHING A PRIVILEGE CONTAINER 
RUN groupadd -r nginxgroup && useradd -r -g nginxgroup Patrick           
# COPYING CUSTOM CONFIGURATION FILE FROM THE CURRENT DIRECTORY TO THE CONTAINER
# COPY nginx.conf /etc/nginx/nginx.conf
# HOSTING A SIMPLE STATIC WEBSITE IN THE PWD
COPY index.html /usr/share/nginx/html
# EXPOSE PORT 3000 ON THE HOST AND MAP IT TO PORT 80 ON THE CONTAINER
EXPOSE 3000  
# RUN NGINX WHEN THE CONTAINER START
CMD ["nginx", "-g", "daemon off;"] 

