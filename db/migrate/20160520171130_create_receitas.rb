class CreateReceitas < ActiveRecord::Migration
  def change
    create_table :receitas do |t|
      t.string :nomereceita
      t.string :datavencimento
      t.string :valor
      t.string :saldo

      t.timestamps null: false
    end
  end
end
