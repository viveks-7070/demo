class UsersController < ApplicationController

	def index
		@users = User.all
	end	

	def new
		@user = User.new
	end	

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end	
	end	

	def destroy
		@user = User.find_by(id: params[:id])
		@user.delete
		redirect_to users_path
	end	

	private

	def user_params
		params.require(:user).permit(:name)
	end	
end