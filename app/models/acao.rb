class Acao < Paragrafo
  embedded_in :eixo, :inverse_of => :acoes
  embeds_many :estrategias
  embeds_many :atores, :class_name => "Ator"  
end