class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    # if params[:name] == nil || params[:name] == ""
    #   redirect_to '/login'  ----> my answer

    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'  #----> from solutions, more semantic
  end

  def destroy
    session.destroy
    redirect_to '/login'
  end
end
