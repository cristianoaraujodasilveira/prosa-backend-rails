class CreateProposta < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL    
    drop table if exists proposta
    ;    
    create table proposta
    (
      id serial not null,
      nome varchar(255) not null,
      descricao text not null,
      valor double precision not null,
      inicio date,
      fim date,
      cidade_id int not null,
      created_at timestamp,
      updated_at timestamp,
      CONSTRAINT pk_proposta PRIMARY KEY (id)
    )
    ;    
    SQL
  end
end


