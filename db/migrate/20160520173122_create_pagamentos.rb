class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.references :despesa, index: true, foreign_key: true
      t.string :formapagamento
      t.string :data
      t.string :valor

      t.timestamps null: false
    end
  end
end
