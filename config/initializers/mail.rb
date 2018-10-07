ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'smtp.gmail.com',
  port: 587,
  user_name: 'sunagakanntawork@gmail.com',
  password: ENV["GMAILE_SECRET_KEY"] ,
  authentication: 'login',
  enable_starttls_auto: true
}
