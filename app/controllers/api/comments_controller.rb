class Api::CommentsController < ApplicationController
  # model name is comment 
  # follow the pattern to fill the controller out 
  # then change to the parent and child relationship  

  # optional, callback, before_action to clean up the show update and destroy
  def index
    @comments = comment.all
    render component: 'Comments', props:{ comments: @comments }
   end

   def index
    @comments = comment.all
    render component: 'Comments', props:{ comments: @comments }
   end

   def create
    @comment = Comment.new(comment_params)
    if @comment.save
      do something or do somewhere
    else
      render component: 'CommentNew', props: { comment: @comment }
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      do something
    else
      render component: 'CommentEdit', props: { comment: @comment }
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    send somewhere
    or
    Comment.find(params[:id]).destroy
    send somewhere
  end

  private
  def comment_params
    params.require(:comment).permit(:attr, :attr2, :everything the table has)
  end
end
