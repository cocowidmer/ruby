class Auto < ActiveRecord::Base
	has_many :piezas, dependent: :destroy
	validates :latitud, numericality: { greater_than_or_equal_to:0 }, numericality: { less_than_or_equal_to:90}
	validates :longitud, numericality: { greater_than_or_equal_to:0 }, numericality: { less_than_or_equal_to:180}
end