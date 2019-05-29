class CreateIletisims < ActiveRecord::Migration[5.2]
  def change
    create_table :iletisims do |t|
      t.string :ad
      t.string :soyad
      t.string :email
      t.text :mesaj

      t.timestamps
    end
  end
end
