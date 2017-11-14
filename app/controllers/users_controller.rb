class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:avatar]
  def avatar
    respond_to do |format|
      if current_user.update({avatar: params.require(:avatar)})
        format.js { render plain: 'OK', status: 200 }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
end
