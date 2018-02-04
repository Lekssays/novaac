class AnswersController < ApplicationController

  def create
		@complaint = Complaint.find(params[:complaint_id])
		@comment = @complaint.answers.create(params[:answer].permit(:name, :content))

		redirect_to complaint_path(@complaint)
	end

  def destroy
		@complaint = Complaint.find(params[:complaint_id])
		@anwser = @complaint.answers.find(params[:id])
		@anwser.destroy

		redirect_to complaint_path(@complaint)
	end

end
