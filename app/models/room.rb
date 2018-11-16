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

    validates :title, :description, :beds, :guests, :image_url, presence: true
    validates :description, length: { maximum: 400, message: "La descripción supera el número de caracteres permitidos" }  
    validates :beds, numericality: { only_integer: true, message: "Beds debe ser un número entero" } 
    validates :guests, numericality: { only_integer: true, message: "Guests debe ser un número entero" } 

end
