# SSHTool Landing Page

Landing page for [SSHTool](https://github.com/Fuskerrs/SSHTool) - The ultimate macOS SSH client.

## Quick Start

### Docker (Recommended)

```bash
# Build and run
docker-compose up -d

# Access at http://localhost:8080
```

### Docker (Manual)

```bash
# Build image
docker build -t sshtool-web .

# Run container
docker run -d -p 8080:80 --name sshtool-web sshtool-web
```

### Local Development

Just open `index.html` in your browser, or use a simple HTTP server:

```bash
# Python
python3 -m http.server 8080

# Node.js
npx serve .

# PHP
php -S localhost:8080
```

## Project Structure

```
sshtool-dev-web/
├── index.html          # Main HTML page
├── styles.css          # All styles
├── script.js           # JavaScript interactions
├── favicon.svg         # Site favicon
├── Dockerfile          # Docker image definition
├── docker-compose.yml  # Docker Compose config
├── nginx.conf          # Nginx configuration
└── README.md           # This file
```

## Features

- Pure HTML/CSS/JS (no framework)
- Responsive design
- Dark mode only (matches SSHTool)
- Optimized for performance
- Docker ready
- SEO optimized

## Deployment

### With Traefik (HTTPS)

The `docker-compose.yml` includes Traefik labels for automatic HTTPS. Make sure Traefik is running with Let's Encrypt configured.

### With Nginx Proxy Manager

1. Run the container on port 8080
2. Create a proxy host in NPM pointing to the container
3. Enable SSL with Let's Encrypt

### On Cloudflare Pages / Vercel / Netlify

Just push the repository - it's static HTML, works everywhere.

## Customization

### Colors

Edit CSS variables in `styles.css`:

```css
:root {
    --primary: #6366f1;
    --secondary: #a855f7;
    --bg-dark: #0a0a0f;
    /* ... */
}
```

### Content

Edit `index.html` directly. All content is in one file for simplicity.

## License

MIT License - Same as SSHTool.
