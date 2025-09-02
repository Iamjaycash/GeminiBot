# Use official Deno image
FROM denoland/deno:alpine-1.35.3

# Set working directory
WORKDIR /app

# Copy everything into container
COPY . .

# Expose port (Render needs this, even if you don’t use it directly)
EXPOSE 8000

# Run your bot
CMD ["run", "--allow-net", "--allow-env", "main.ts"]
