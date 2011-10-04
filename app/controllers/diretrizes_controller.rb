class DiretrizesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  def index
    @documentos = Diretriz.all(conditions: { tipo: "doc" }).order_by([[:_id, :asc]])
    @diretrizes = Diretriz.excludes(tipo: "doc" )  
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
