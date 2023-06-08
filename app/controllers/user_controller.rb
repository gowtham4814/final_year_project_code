class UserController < ApplicationController
  before_action :auth, except: [:logout]
  def login
  end

  def check
    @check = User.first
    if @check.name == params['username']
      if @check.password == params['password']
        redirect_to '/home'
        session['name'] = @check.name
      else
        render :login
      end
    else
      render :login
    end

  end

  def logout
    session.delete(:name)
    redirect_to '/'
  end

  private

  def auth
    if session[:name].present?
      redirect_to '/home'
    end
  end


end
