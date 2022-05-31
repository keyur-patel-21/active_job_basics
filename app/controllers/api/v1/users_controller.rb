class Api::V1::UsersController < ApplicationController 

  def test
    SendmailJob.perform_now
  end

  def test_later
    SendmaillaterJob.perform_later
  end
end
