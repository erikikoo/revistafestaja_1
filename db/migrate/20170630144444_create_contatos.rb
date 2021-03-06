class CreateContatos < ActiveRecord::Migration[5.0]
  def change
    create_table :contatos do |t|
      t.string :numero, :limit => 15
      t.boolean :whatsapp, default: false
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
