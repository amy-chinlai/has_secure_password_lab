class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        redirect_to new_user_path unless @user.authenticate(params[:password])
        session[:user_id] = @user.id
    end


end