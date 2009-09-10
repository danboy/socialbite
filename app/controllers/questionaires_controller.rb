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

  def create_post

    @content = Questionaire.find(params[:id])
    @item = Item.new
    @item.title = @content.vendor
    @item.body = "
    <ul>
      <li>
        #{@content.website}
      </li>
    </ul>
    <p>#{@content.description}</p>

    "
    @item.page_id=1
    @item.save
    redirect_to(@item)
  end

end

