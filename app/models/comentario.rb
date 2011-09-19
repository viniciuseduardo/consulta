class Comentario
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  field :texto, :type => String
  field :justificativa, :type => String
  
  validates :texto, :presence => true,:length => 1..1000
  validates :justificativa, :presence => true,:length => 1..1000
  
  embedded_in :paragrafo, :inverse_of => :comentarios
  belongs_to :user
end
