class ImagesController < ApplicationController

	before_action :set_project

	before_action :set_image, only: [:edit, :update, :destroy]

	def create
		@image = @project.images.build(image_params)

		if @image.save
			redirect_to @project, notice: 'Bildet ble lagt til på prosjektet'
		else
			redirect_to @project, alert: 'En feil oppsto med bildet, vennligst forsøk igjen'
		end
	end

	def edit;end

	def update
		if @image.update_attributes(image_params)
			redirect_to @project, notice: 'Bildet ble oppdatert'
		else
			render action: 'edit'
		end
	end

	def destroy
		@image.delete
		redirect_to @project, notice: 'Bildet ble slettet'
	end

	private

		def image_params
			params.require(:image).permit(:caption, :file)
		end

		def set_project
			@project = Project.find(params[:project_id])
		end

		def set_image
			@image = @project.images.find(params[:id])
		end

end
