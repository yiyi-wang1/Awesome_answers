class QuestionsController < ApplicationController
  
    # =============CALLBACKS=====================
    before_action :find_question, only: [:edit, :update, :show, :destroy]

  # =============CREATE========================
  def new
    # Because Rails form helper methods need an instance of a model to work, we create a new instance
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  # ================READ========================
  def index
    @questions = Question.order(created_at: :desc)
    # Model.all is method built into active record used to return all records of that model
    # The @ sign is necessary to make a variable an instance variable
    # You need an instance variable to make it available in the view pages!!!
  end
  
  def show
  end

  # ================Update========================
  def edit

  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  # ================Delete========================
  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private
  def find_question
    @question = Question.find params[:id]
  end

  def question_params
    params.require(:question).permit(:title, :body)
    # get the data from the form and add it into DB
    # Use the 'require' on the params object to retrieve the nested hash of a key
    # usually corresponding the na-value pairs of a form
    # 'permit' to specify all input names are allowed to submit to the DB
  end

end
