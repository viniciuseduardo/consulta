class AcoesController < ApplicationController
  before_filter :authenticate_user!
  def show
    @diretriz = Diretriz.find(params[:diretrize_id])
    @eixo = @diretriz.eixos.find(params[:eixo_id])
    @paragrafo = @eixo.acoes.find(params[:id])
    @comentarios = @paragrafo.comentarios.build
    
    @form = "shared/form_acao"

    render :template => 'paragrafos/show'
  end
end