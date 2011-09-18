class DiretrizesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    @diretrizes = Diretriz.all(sort: [[ :_id, :desc ]])
  end

  def show
    @diretriz = Diretriz.find(params[:id])

    if @diretriz.tipo == "matriz"
      render 'diretrizes/show'
    else
      render 'diretrizes/doc'
    end
  end
end
