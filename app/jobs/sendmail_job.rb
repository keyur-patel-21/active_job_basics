class SendmailJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    User.sendmail
  end
end
