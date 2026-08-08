FROM ghcr.io/us/crw:latest

EXPOSE 3000

CMD ["crw", "serve", "--port", "3000"]