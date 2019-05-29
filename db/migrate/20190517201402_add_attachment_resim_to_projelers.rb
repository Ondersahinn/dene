class AddAttachmentResimToProjelers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :projelers do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :projelers, :resim
  end
end
