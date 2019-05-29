class CreateBilgilers < ActiveRecord::Migration[5.2]
  def change
    create_table :bilgilers do |t|
      t.text :aciklama

      t.timestamps
    end
  end
end
