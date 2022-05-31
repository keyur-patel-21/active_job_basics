class User < ApplicationRecord

  def self.sendmail
    @user = User.new(name: "Keyur", email: "keyurpatoliya21@gmail.com")

    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
    end
  end

  def self.sendmaillater
    @user = User.new(name: "Keyur", email: "keyurpatoliya21@gmail.com")

    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later(wait: 1.hour)
    end
  end
end
