FROM cgr.dev/chainguard/wolfi-base AS build

# Install nginx
RUN apk add --no-cache nginx

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]