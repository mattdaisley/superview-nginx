FROM nginx

# Install dependencies
RUN apt-get update -y
RUN apt-get install -y less nano

# copy conf file
ADD superview.conf /etc/nginx/conf.d/

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx", "-g", "daemon off;"]

# Expose ports.
EXPOSE 8080
EXPOSE 443