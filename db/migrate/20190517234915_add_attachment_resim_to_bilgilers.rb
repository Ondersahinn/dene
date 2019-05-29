class AddAttachmentResimToBilgilers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :bilgilers do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :bilgilers, :resim
  end
end
