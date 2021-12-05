class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def create
    doc = Document.create!(document_params)
    redirect_to document_path(doc)
  end

  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  private

  def document_params
    params.require(:document).permit(:name, :csv_file)
  end
end
