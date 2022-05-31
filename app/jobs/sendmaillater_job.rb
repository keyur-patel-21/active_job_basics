class SendmaillaterJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    User.sendmaillater
  end
end
