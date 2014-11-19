class Api::V1::MembersController < ApplicationController
	respond_to :json

	def index
		respond_with Member.all
	end

	def show
		respond_with Member
	end

	def create 
		respond_with :api, :v1, Member.create(member_params)
	end

	def update
		respond_with member.update(member_params)
	end

	def destroy
		respond_with member.destroy
	end

	private 

	def member 
		Member.find(params[:id])
	end

	def member_params
		params.require(:member).permit(:first_name, :last_name, :email, :phone, :status, :notes)
	end
	

















end
