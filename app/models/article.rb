class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 } #no me deja guardar un titulo con menos de 5 letras
end