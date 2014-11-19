class Api::V1::MembersController < ApplicationController
	respond_to :json

	def index
		respond_with Member.all
	end

	def show
		respond_with member
	end

	def create 
		respond_with :api, :v1, Member.create(member_params)
	end

	def update
		# return 422 for invalid updates and 204 otherwise
		member.update(member_params)
		respond_with member
	end

	def destroy
		respond_with member.destroy
	end

	private 

	def member 
		# lets only hit the db once
		@member ||= Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(:first_name, :last_name, :email, :phone, :status, :notes)
	end
end
