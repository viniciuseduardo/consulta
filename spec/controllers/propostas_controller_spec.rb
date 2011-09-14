require 'spec_helper'

describe PropostasController do
  describe "GET show" do
    it "assigns the requested paragrafo as @paragrafo" do
      proposta = Proposta.create! :titulo => "Tesaldnlsandalsndlnsdn"
      get :show, :id => proposta.id.to_s
      assigns(:proposta).should eq(proposta)
    end
  end
end