class QuestionairesController < ApplicationController

  def index
  @questionnaires = Questionaire.all
  end
  def new
    @questionaire = Questionaire.new
  end

  def show
    @questionaire = Questionaire.find(params[:id])
  end

  def create
    @questionaire = Questionaire.new(params[:questionaire])

    respond_to do |format|
      if @questionaire.save
        flash[:notice] = 'Page was successfully created.'
        format.html { redirect_to(@questionaire) }
        format.xml  { render :xml => @questionaire, :status => :created, :location => @questionaire }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @questionaire.errors, :status => :unprocessable_entity }
      end
    end
  end

end

