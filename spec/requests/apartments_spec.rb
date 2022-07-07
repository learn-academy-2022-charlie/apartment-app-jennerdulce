require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "gets all the apartments from the database" do
      apartment = Apartment.create {
        name: 'Apartment Name',
        street: '800 E Lexington Ave',
        city: 'El Cajon',
        zipcode: '92019',
        state: 'California',
        manager: 'Freddy Burger',
        email: 'freddy@lexingtonpark.com',
        price: '$2,090',
        bedrooms: 2,
        bathrooms: 2,
        pets: 'yes',
        image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
        user_id: 1
       }
      get '/cats'
      bentley = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(bentley.length).to eq 1
    end
  end
end
