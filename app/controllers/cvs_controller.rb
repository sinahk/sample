class CvsController < ApplicationController
  def index
  	@cvs = Cv.all
  end

  def new
  	@cvs = Cv.new
  end

  def create
  	@cvs = Cv.new(cv_params)
  	if @cvs.save 
  		redirect_to cvs_path, notice: "The resume #{@cvs.name} has been uploaded."
  	else
  		render "new"
  	end 
  end

  def destroy
  	@cv = Cv.find(params[:id])
  	@cv.destroy

  	redirect_to cvs_path, notice: "The resume #{@cv.name} has been deleted." 
  end

private

  def cv_params
  	params.require(:cv).permit(:name, :attachment)
  end

end
