class Diretriz
  include Mongoid::Document
  
  field :titulo, :type => String
  
  validates :titulo, :presence => true, :length => 1..1000
  
  embeds_many :eixos
end
