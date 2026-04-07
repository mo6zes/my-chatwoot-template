FROM ghcr.io/railwayapp-templates/chatwoot:Community

# Fix Cloudflare R2 checksum incompatibility via AWS SDK global config
# (storage.yml options not supported by this aws-sdk version)
COPY config/initializers/aws_checksum.rb /app/config/initializers/aws_checksum.rb