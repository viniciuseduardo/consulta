class EstrategiasController < ApplicationController
  def show
    @diretriz = Diretriz.find(params[:diretrize_id])
    @eixo = @diretriz.eixos.find(params[:eixo_id])
    @acao = @eixo.acoes.find(params[:aco_id])
    @paragrafo = @acao.estrategias.find(params[:id])
    @comentarios = @paragrafo.comentarios.build
    
    @form = "shared/form_estrategia"

    render :template => 'paragrafos/show'
  end
end