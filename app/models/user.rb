class User
  include Mongoid::Document
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
  
  field :nome, :type => String
  field :instituicao, :type => String
  field :estado, :type => String
  
  validates :nome, :presence => true,:length => 1..100
  validates :instituicao, :presence => true,:length => 1..300
end