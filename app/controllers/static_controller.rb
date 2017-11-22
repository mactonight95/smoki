class StaticController < ApplicationController
  def index
  @smoks = Smok.all
  @users = User.all
  end
end
