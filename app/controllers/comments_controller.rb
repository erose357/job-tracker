class CommentsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @job = Job.find(params[:job_id])
    @comment = @job.comments.new
  end

  def create
    job = Job.find(params[:job_id])
    @comment = job.comments.new(comment_params)
    if @comment.save
      flash[:success] = "Comment successfully added!"
      redirect_to company_job_path(job.company.id, job.id)
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
