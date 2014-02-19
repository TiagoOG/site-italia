class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :email, :password, :password_confirmation, :remember_me

  if ENV.include?('RAILS_ENV')
    require 'logger'
    Rails.logger = Logger.new(STDOUT)
  end

  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  # Essa validação pode ser representada da seguinte forma:
  # validates_format_of :email, with: EMAIL_REGEXP
  validate do
    errors.add(:email, :invalid) unless email.match(EMAIL_REGEXP)
  end

end
