class Image < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader

	belongs_to :identity

	enum category: %w(portrait landscape city\ exploration nature animals) #toma las posiciones que tenemos en category y determina o asigna cuales son los valores

	validates :name, presence: true #name tiene que ser requerido

	def tags_text
		self.tags.join(', ') #convertir el arreglo en una cadena de texto separado por ,
	end

	def tags_text=(value)
		self.tags = value.split(',').map{ |tag| tag.strip }
	end
end
