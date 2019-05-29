class Projeler < ApplicationRecord
  has_attached_file :resim, styles: { medium: "600x400>", thumb: "800x600>" }, default_url: "/images/:style/missing.png" 
  validates_attachment_content_type :resim, content_type: /\Aimage\/.*\z/
  validates_length_of :aciklama, minimum: 50, allow_blank: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
