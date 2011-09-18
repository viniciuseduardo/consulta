class Estrategia < Paragrafo
  embedded_in :eixo, :inverse_of => :estrategias
end