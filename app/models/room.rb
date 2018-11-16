# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base

    validates :title, presence: true
    validates :description, presence: true, length: { maximum: 400, message: "La descripción supera el número de caracteres permitidos" }  
    validates :beds, presence: true, numericality: { only_integer: true, message: "Beds debe ser un número entero" } 
    validates :guests, presence: true, numericality: { only_integer: true, message: "Guests debe ser un número entero" } 
    validates :image_url, presence: true
    
end
