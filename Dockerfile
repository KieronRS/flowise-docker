FROM flowiseai/flowise:latest

# Set environment variables directly (can also be done in Railway UI)
ENV PUBLIC_API=true
ENV PUBLIC_CHATFLOW=true
ENV CORS_ORIGINS=*
ENV IFRAME_ORIGINS=*
ENV DATABASE_PATH=/root/.flowise/database.sqlite

EXPOSE 3000

CMD ["flowise", "start"]
