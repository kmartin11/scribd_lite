class DocsController < ApplicationController
  
  def index
    @docs = Doc.all.order("created_at DESC")
  end
  
  def new
    @doc = Doc.new
  end
  
  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @doc = Doc.find(params[:id])
  end
  
  private
    
    def doc_params
      params.require(:doc).permit(:title, :description, :pdf)
    end
end
