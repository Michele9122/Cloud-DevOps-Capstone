FROM nginx

# Stage 1:
RUN rm /usr/share/nginx/html/index.html

# Stage 2:
COPY index.html /usr/share/nginx/html