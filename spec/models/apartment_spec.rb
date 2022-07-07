require 'rails_helper'

RSpec.describe Apartment, type: :model do

  it 'has to contain a name' do
    apartment = Apartment.create {
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
    expect(apartment.errors[:name]).to_not be_empty
  end
  it 'has to contain a street' do
    apartment = Apartment.create {
      name: 'Lexington Park',
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
    expect(apartment.errors[:street]).to_not be_empty
  end
  it 'has to contain a city' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
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
    expect(apartment.errors[:city]).to_not be_empty
  end
  it 'has to contain a zipcode' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
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
    expect(apartment.errors[:zipcode]).to_not be_empty
  end
  it 'has to contain a state' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      manager: 'Freddy Burger',
      email: 'freddy@lexingtonpark.com',
      price: '$2,090',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:state]).to_not be_empty
  end
  it 'has to contain a manager' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      email: 'freddy@lexingtonpark.com',
      price: '$2,090',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:manager]).to_not be_empty
  end
  it 'has to contain a email' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      manager: 'Freddy Burger',
      price: '$2,090',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:email]).to_not be_empty
  end
  it 'has to contain a price' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      manager: 'Freddy Burger',
      email: 'freddy@lexingtonpark.com',
      bedrooms: 2,
      bathrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:price]).to_not be_empty
  end
  it 'has to contain a number of bedroom' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      manager: 'Freddy Burger',
      email: 'freddy@lexingtonpark.com',
      price: '$2,090',
      bathrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:bedrooms]).to_not be_empty
  end
  it 'has to contain a number of bathrooms' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      manager: 'Freddy Burger',
      email: 'freddy@lexingtonpark.com',
      price: '$2,090',
      bedrooms: 2,
      pets: 'yes',
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:bathrooms]).to_not be_empty
  end
  it 'has to contain an entry for pets' do
    apartment = Apartment.create {
      name: 'Lexington Park',
      street: '800 E Lexington Ave',
      city: 'El Cajon',
      zipcode: '92019',
      state: 'California',
      manager: 'Freddy Burger',
      email: 'freddy@lexingtonpark.com',
      price: '$2,090',
      bedrooms: 2,
      bathrooms: 2,
      image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
      user_id: 1
     }
    expect(apartment.errors[:pets]).to_not be_empty
  end
  it 'has to contain an entry for image' do
    apartment = Apartment.create {
      name: 'Lexington Park',
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
      user_id: 1
     }
    expect(apartment.errors[:image]).to_not be_empty
  end
end