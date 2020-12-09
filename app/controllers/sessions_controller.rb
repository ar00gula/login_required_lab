class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:create, :destroy]

  def show
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]      
    end     
  end

  def destroy
    session[:name] = nil
  end

end


