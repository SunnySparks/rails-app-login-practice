class RegistrationsController < ApplicationController
  def create
    user = User.create!(email: params['user']['email'], username: params['user']['username'])

    if user
      session[:user_id] = user.user_id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end
end