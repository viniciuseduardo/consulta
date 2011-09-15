class AtoresController < ApplicationController
  def show
    @diretriz = Diretriz.find(params[:diretrize_id])
    @eixo = @diretriz.eixos.find(params[:eixo_id])
    @acao = @eixo.acoes.find(params[:aco_id])
    @paragrafo = @acao.atores.find(params[:id])
    @comentarios = @paragrafo.comentarios.build

    @form = "shared/form_ator"

    render :template => 'paragrafos/show'
  end
end