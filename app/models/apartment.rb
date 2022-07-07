class Apartment < ApplicationRecord
    validates :name, :street, :city, :state, :manager, :email, :price, :bedrooms, :bathrooms, :pets, :image, :zipcode, presence: true
    belongs_to :user
end
