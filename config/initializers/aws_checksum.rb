# Fix Cloudflare R2 checksum incompatibility.
# Rails 7.1 + aws-sdk >= 3.240 sends multiple checksum headers which R2 rejects
# with: Aws::S3::Errors::InvalidRequest: You can only specify one non-default checksum
#
# This disables automatic checksum calculation at the SDK level.
Aws.config.update(
  request_checksum_calculation: 'when_required',
  response_checksum_validation: 'when_required'
)
