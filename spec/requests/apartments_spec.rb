require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "gets all the apartments from the database" do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      user.apartments.create {
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
       }
      get '/apartments'
      apartment = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end

  describe "POST /newapartments/:id" do
    it "creates a new apartment and adds it to the database" do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
      
      apartment = user.apartments.first
      expect(response).to have_http_status(200)
      expect(apartment.name).to eq 'Apartment Name'
      expect(apartment.street).to eq '800 E Lexington Ave'
      expect(apartment.city).to eq 'El Cajon'
      expect(apartment.zipcode).to eq '92019'
      expect(apartment.state).to eq 'California'
      expect(apartment.manager).to eq 'Freddy Burger'
      expect(apartment.email).to eq 'freddy@lexingtonpark.com'
      expect(apartment.price).to eq '$2,090'
      expect(apartment.bathrooms).to eq 2
      expect(apartment.bedrooms).to eq 2
      expect(apartment.pets).to eq 'yes'
      expect(apartment.image).to eq 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
    end

    it "does not post a apartment without a name to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['name']).to include "can't be blank"
    end
    
    it "does not post a apartment without a street to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['street']).to include "can't be blank"
    end

    it "does not post a apartment without a city to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['city']).to include "can't be blank"
    end

    it "does not post a apartment without a state to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['state']).to include "can't be blank"
    end

    it "does not post a apartment without a zipcode to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['zipcode']).to include "can't be blank"
    end

    it "does not post a apartment without a manager to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['manager']).to include "can't be blank"
    end

    it "does not post a apartment without an email to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          price: '$2,090',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['email']).to include "can't be blank"
    end

    it "does not post a apartment without a price to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          bedrooms: 2,
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['price']).to include "can't be blank"
    end

    it "does not post a apartment without a bedroom entry to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bathrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['bedrooms']).to include "can't be blank"
    end

    it "does not post a apartment without a bathroom entry to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          name: 'Apartment Name',
          street: '800 E Lexington Ave',
          city: 'El Cajon',
          zipcode: '92019',
          state: 'California',
          manager: 'Freddy Burger',
          email: 'freddy@lexingtonpark.com',
          price: '$2,090',
          bedrooms: 2,
          pets: 'yes',
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['bathrooms']).to include "can't be blank"
    end

    it "does not post a apartment without a pet entry to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['pets']).to include "can't be blank"
    end

    it "does not post a apartment without an image entry to the database " do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
       }

      post `/newapartments/#{user.id}`, params: apartment_params
  
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(apartment['image']).to include "can't be blank"
    end

    describe "Get /apartmentshow/:id" do
    it "shows a singular apartment retrieved by id" do
      user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
          image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
        }
      }
      post `/newapartments/#{user.id}`, params: apartment_params

      apartment = Apartment.first
      apartment_id = apartment.id
      get "/apartmentshow/#{apartment_id}"

      show_apartment = Apartment.first
      expect(response).to have_http_status(200)
      expect(show_apartment.name).to eq 'Apartment Name'
      expect(show_apartment.street).to eq '800 E Lexington Ave'
      expect(show_apartment.city).to eq 'El Cajon'
      expect(show_apartment.zipcode).to eq '92019'
      expect(show_apartment.state).to eq 'California'
      expect(show_apartment.manager).to eq 'Freddy Burger'
      expect(show_apartment.email).to eq 'freddy@lexingtonpark.com'
      expect(show_apartment.price).to eq '$2,090'
      expect(show_apartment.bathrooms).to eq 2
      expect(show_apartment.bedrooms).to eq 2
      expect(show_apartment.pets).to eq 'yes'
      expect(show_apartment.image).to eq 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1'
    end   
  end
    
  end
end
