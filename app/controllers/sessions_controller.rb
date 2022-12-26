class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params.require(:session)

    user = User.find_by(login: user_params[:login])

    if user.present?
      session[:user_id] = user.id

      redirect_to root_path, notice: "Вы успешно вошли в аккаунт"
    else
      flash.now[:alert] = "Неправильный логин или пароль"

      render :new
    end
  end

  def destroy
    session.delete(:user_id)

    redirect_to root_path, notice: "Вы успешно вышли из аккаунта"
  end
end
