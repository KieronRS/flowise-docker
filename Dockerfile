# Use the official prebuilt Flowise Docker image
FROM flowiseai/flowise:latest

# Set environment variables for public access
ENV PUBLIC_API=true
ENV PUBLIC_CHATFLOW=true
ENV CORS_ORIGINS=*
ENV IFRAME_ORIGINS=*
ENV DATABASE_PATH=/root/.flowise/database.sqlite

# Flowise already starts automatically — no CMD needed
EXPOSE 3000
