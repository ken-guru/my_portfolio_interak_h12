CarrierWave.configure do |config|
  config.ftp_host = "ftp.domeneshop.no"
  config.ftp_port = 21
  config.ftp_user = "#"
  config.ftp_passwd = "#"
  config.ftp_folder = "/www/rails_uploads"
  config.ftp_url = "http://kenpaulsen.no/rails_uploads"
  # config.passive = true # false by default
end