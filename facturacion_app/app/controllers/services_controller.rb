class ServicesController < ApplicationController
	def index
		@services = Service.all
	end
	def new
		@service = Service.new
	end
	def create
		@service = Service.new(permit_params)
		if @student.save
			redirect_to services_path
		else
			render 'new'
		end
	end
	def edit
		@service = Service.find(params[:id])
	end
	def update
		@service = Service.find(params[:id])
		if @student.update(permit_params)
			redirect_to students_path
		else
			render 'new'
		end
	end
	def destroy
		@service = Service.find(params[:id])
		if @student.delete
			redirect_to services_path
		end
	end
	private
	def permit_params
		params.require(:service).permit(:name, :details, :amount)
	end
end
