class LoginsController < ApplicationController

  def new
    @login = Login.new
  end

  def create
  if(params.)






  end
end




  def create
    if (params.has_key?(:answer_id))
      @answer = Answer.find_by(id: params[:answer_id])
      comment = current_user.comments.build(comment_params)
      comment.commentable_id = params[:answer_id]
      comment.commentable_type = "Answer"
      params[:question_id] = @answer.question.id
    else
      comment = current_user.comments.build(comment_params)
      comment.commentable_type = "Question"
      comment.commentable_id = params[:question_id]
    end

    if comment.save
      redirect_to question_path(params[:question_id])  #have to pass in question.id as a local in the question show page when the comment is to an  answer
    else
      render 'new'
    end
  end

private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
