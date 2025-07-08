# Use Node as the base image
FROM node:18-alpine

# Install required dependencies
RUN apk add --no-cache git python3 py3-pip make g++ build-base \
    cairo-dev pango-dev chromium

# Install Flowise globally
RUN npm install -g flowise

# Set up Flowise data directory
RUN mkdir -p /root/.flowise && chmod -R 777 /root/.flowise

# Set working directory
WORKDIR /data

# Expose port 3000 (default for Flowise)
EXPOSE 3000

# Set environment variables at build time (optional)
ENV PUBLIC_API=true
ENV PUBLIC_CHATFLOW=true
ENV CORS_ORIGINS=*
ENV IFRAME_ORIGINS=*
ENV DATABASE_PATH=/root/.flowise/database.sqlite
ENV PORT=3000

# Start Flowise correctly (NO comma)
CMD ["flowise", "start"]
