class Book < ApplicationRecord
    enum status: {Lent:0, Onhold:1, Available:2 NotToBeLent:3}
end
