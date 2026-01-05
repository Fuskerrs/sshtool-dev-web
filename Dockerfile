# SSHTool Landing Page
# Multi-stage build for minimal image size

FROM nginx:alpine

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/

# Copy nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1

# Labels
LABEL org.opencontainers.image.title="SSHTool Landing Page"
LABEL org.opencontainers.image.description="Landing page for SSHTool - The ultimate macOS SSH client"
LABEL org.opencontainers.image.source="https://github.com/Fuskerrs/sshtool-dev-web"
