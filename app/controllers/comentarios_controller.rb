class ComentariosController < ApplicationController
  before_filter :authenticate_user!
  def create
    @tipo = params[:comentario][:tipo]
    @diretriz = Diretriz.find(params[:comentario][:diretrize_id])
    case @tipo
    when "Paragrafo"
      @paragrafo = @diretriz.paragrafos.find(params[:comentario][:paragrafo_id])
      redirect_to diretrize_paragrafo_path(@diretriz, @paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
    when "Eixo"
      @paragrafo = @diretriz.eixos.find(params[:comentario][:eixo_id])
      redirect_to diretrize_eixo_path(@diretriz, @paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
    when "Acao"
      @eixo = @diretriz.eixos.find(params[:comentario][:eixo_id])
      @paragrafo = @eixo.acoes.find(params[:comentario][:acao_id])
      redirect_to diretrize_eixo_aco_path(@diretriz, @eixo,@paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
    when "Estrategia"
      @eixo = @diretriz.eixos.find(params[:comentario][:eixo_id])
      @acao = @eixo.acoes.find(params[:comentario][:acao_id])
      @paragrafo = @acao.estrategias.find(params[:comentario][:estrategia_id])
      redirect_to diretrize_eixo_aco_estrategia_path(@diretriz, @eixo, @acao, @paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
    when "Ator"
      @eixo = @diretriz.eixos.find(params[:comentario][:eixo_id])
      @acao = @eixo.acoes.find(params[:comentario][:acao_id])
      @paragrafo = @acao.atores.find(params[:comentario][:ator_id])
      redirect_to diretrize_eixo_aco_atore_path(@diretriz, @eixo, @acao, @paragrafo) if @paragrafo.comentarios.create!(params[:comentario])
    end
  end
end