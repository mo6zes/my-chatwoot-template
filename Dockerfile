FROM ghcr.io/railwayapp-templates/chatwoot:Community

# Patch storage.yml to fix Cloudflare R2 checksum incompatibility
# (Rails 7.1 + aws-sdk >= 3.240 sends multiple checksum headers which R2 rejects)
COPY config/storage.yml /app/config/storage.yml