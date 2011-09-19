class ParagrafosController < ApplicationController
  before_filter :authenticate_user!
  def show
    @diretriz = Diretriz.find(params[:diretrize_id])
    @paragrafo = @diretriz.paragrafos.find(params[:id])
    @comentarios = @paragrafo.comentarios.build

    @form = "shared/form_paragrafo"

    render :template => 'paragrafos/show'
  end
end