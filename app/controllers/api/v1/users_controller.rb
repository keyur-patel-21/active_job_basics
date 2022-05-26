class Api::V1::UsersController < ApplicationController 

  def test
    SendmailJob.perform_now
  end
end
