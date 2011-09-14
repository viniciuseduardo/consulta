require 'spec_helper'

describe Comentario do
  it { should validate_presence_of :texto }
  it { should validate_length_of(:texto).within(1..1000) }
  it { should validate_presence_of :justificativa }
  it { should validate_length_of(:justificativa).within(1..1000) }  
  it { should be_embedded_in(:paragrafo).as_inverse_of(:comentarios) }
  it { should belong_to(:user).of_type(User) }
end
