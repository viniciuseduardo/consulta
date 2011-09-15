require 'spec_helper'

describe User do
  it { should validate_presence_of :nome }
  it { should validate_presence_of :instituicao }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }

  it { should validate_uniqueness_of(:email) }

  it { should validate_length_of(:nome).within(1..100) }
  it { should validate_length_of(:instituicao).within(1..300) }
  it { should validate_length_of(:password).within(6..10) }

  context "criando novo Usuario" do
    before(:each) do
      @attr = {:nome => "Teste", :instituicao => "Secretaria de Teste do RJ", :email => "teste@teste.com", :password => "123456", :password_confirmation => "123456"}
    end

    it "deve criar nova instacia quando passados atributos validos" do      
        User.create!(@attr)
    end

    it "should reject invalid email addresses" do
      addresses = %w[user@foocom user_at_foo.org example.user@foo.]
      addresses.each do |address|
        invalid_email_user = User.new(@attr.merge(:email => address))
        invalid_email_user.should_not be_valid
      end
    end
  end
end