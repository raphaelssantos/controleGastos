class CreateDespesas < ActiveRecord::Migration
  def change
    create_table :despesas do |t|
      t.string :nomedespesa
      t.string :datavencimento
      t.string :valor
      t.string :saldo

      t.timestamps null: false
    end
  end
end
