class Course < ApplicationRecord
  validates :title, :presence => {:message => "Usted debe ingresar un título"}, length: {minimum: 2, maximum: 50, :message => "El título debe tener entre 2 y 50 caracteres"}
  validates :description, :presence => {:message => "Usted debe ingresar una descripción"} , length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :avatar,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
  has_many :comments
end
