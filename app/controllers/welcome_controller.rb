class WelcomeController < ApplicationController
  def index
    flash[:notice] = "早安！你好！国庆快乐!"
  #  flash[:alert] = '晚安!该睡了!'
  #  flash[:warning] = "这是 warning 讯息！"
  end
end
