class Diretriz
  include Mongoid::Document
  
  field :titulo, :type => String
  field :tipo, :type => String, :default => "matriz"
  
  validates :titulo, :presence => true, :length => 1..1000
  
  embeds_many :eixos
  embeds_many :paragrafos  
end
