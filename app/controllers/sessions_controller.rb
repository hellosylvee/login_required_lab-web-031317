class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end
end