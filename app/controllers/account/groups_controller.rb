class Account::GroupsController < ApplicationController
   before_action :authenticate_user! , only: [:edit, :destroy]
  before_action :find_group_and_check_permission, only: [:edit, :destroy]

  def index
    @groups = current_user.participated_groups
  end
  def edit

  end
  def destroy

     @group.destroy
     flash[:alert] = "Group deleted"
     redirect_to groups_path
   end
   private

   def find_group_and_check_permission
      @group = Group.find(params[:id])
      if current_user != @group.user
        redirect_to root_path, alert: "You have no permission."
      end
    end
end
