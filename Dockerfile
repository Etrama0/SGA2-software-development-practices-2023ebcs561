FROM nginx:alpine

# Copy the static site into nginx html folder
COPY . /usr/share/nginx/html

# Expose default http port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
