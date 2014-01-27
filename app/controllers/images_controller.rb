class ImagesController < ApplicationController

	def create
		@project = Project.find(params[:project_id])
		@image = @project.images.build(image_params)

		if @image.save
			redirect_to @project, notice: 'Bildet ble lagt til på prosjektet'
		else
			redirect_to @project, alert: 'En feil oppsto med bildet, vennligst forsøk igjen'
		end
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private

		def image_params
			params.require(:image).permit(:caption)
		end

end
