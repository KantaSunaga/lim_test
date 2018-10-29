user = "sunagakanntawork@gmail.com"
password = "nzijttetoytlzcfw"
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'smtp.gmail.com',
  port: 587,
  user_name: user,
  password: password,
  authentication: 'login',
  enable_starttls_auto: true
}
