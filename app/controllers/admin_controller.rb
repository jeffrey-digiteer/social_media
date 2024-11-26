class AdminController < ApplicationController
    before_action :authenticate_admin!
    before_action :set_current_user

    def set_current_user
      Thread.current[:current_user] = current_admin
    end

end
  