class PropostaSerializer < ActiveModel::Serializer
  attributes :id, :nome, :descricao, :valor, :inicio, :fim
  
  belongs_to :cidade
end
