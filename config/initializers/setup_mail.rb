ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address                      => 'smtp.sendgrid.net',
    :port                         => '587',
    :authentication               => :plain,
    :user_name                    => 'app50709693@heroku.com',
    :password                     => 'quyfvpuu1688',
    :domain                       => 'heroku.com',
    :enable_starttls_auto         => true
    }