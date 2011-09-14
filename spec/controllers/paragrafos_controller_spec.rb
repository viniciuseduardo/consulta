require 'spec_helper'

describe ParagrafosController do
  def valid_attributes
    {:texto => "asdbsadbjdsbkdbsjakdbjkadbjkabd"}
  end

  describe "GET show" do
    it "assigns the requested paragrafo as @paragrafo" do
      proposta = Proposta.create! :titulo => "Tesaldnlsandalsndlnsdn"
      paragrafo = proposta.paragrafos.create! valid_attributes
      get :show, :proposta_id => proposta.id.to_s, :id => paragrafo.id.to_s
      assigns(:paragrafo).should eq(paragrafo)
    end
  end
end