class Proposta < ApplicationRecord
    validates_presence_of :nome, :descricao, :valor, :inicio, :fim
    validate :validar_datas
    belongs_to :cidade

    def validar_datas
        errors.add( :fim, "Data final não pode ser menor que a data de início" ) if ( ( !self.inicio.nil?  && !self.fim.nil? ) && ( self.inicio > self.fim ) )
    end

    def inicio                
        @inicio = I18n.l read_attribute(:inicio), format: :default
        @inicio
    end

    def fim
        @fim = I18n.l read_attribute(:fim), format: :default
        @fim
    end

end
