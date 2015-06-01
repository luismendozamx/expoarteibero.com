# config/initializers/refile.rb
require "refile/s3"

aws = {
  access_key_id: ENV['AWS_ACCESS_KEY_ID'],
  secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  region: ENV['AWS_BUCKET_REGION'],
  bucket: ENV['S3_BUCKET_NAME']
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
Refile.host = 'cdn.expoarteibero.com'