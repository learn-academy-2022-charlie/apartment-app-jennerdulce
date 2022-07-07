# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

apartments = [
    {
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
     image: 'https://images1.apartments.com/i2/ZNNLRXth5Ar5s3kTKbWzZC-Zdx4lWaOrDrS18n-OLLc/110/lexington-park-el-cajon-ca-primary-photo.jpg?p=1',
     user_id: 1
    },
    {
    name: 'Villa Toscana',
     street: '1451 Brabham St,',
     city: 'El Cajon',
     zipcode: '92019',
     state: 'California',
     manager: 'Jason Vorhees',
     email: 'jason@villatoscana.com',
     price: '$3,050',
     bedrooms: 3,
     bathrooms: 2,
     pets: 'yes',
     image: 'https://images1.apartments.com/i2/wrfYw6rB5iLhzaZTWXTFVy_1UxL7vwEendTnE0vM-RA/111/villa-toscana-el-cajon-ca-primary-photo.jpg?p=1',
     user_id: 1
    },
    {
    name: 'The Timbers Apartments',
     street: '1110 Petree St',
     city: 'El Cajon',
     zipcode: '92020',
     state: 'California',
     manager: 'Luke Skywalker',
     email: 'luke@timbersapartments.com',
     price: '$2,250',
     bedrooms: 1,
     bathrooms: 1,
     pets: 'yes',
     image: 'https://images1.apartments.com/i2/dJJ1Azn_d1HRR6DAZGcArBbsPHrM66-M8JrVMnTrjMI/112/the-timbers-apartments-el-cajon-ca-primary-photo.jpg?p=1',
     user_id: 1
    },
    {
    name: 'Rancho Hillside',
     street: '12367 Calle Albara',
     city: 'El Cajon',
     zipcode: '92019',
     state: 'California',
     manager: 'Bob John',
     email: 'bob@ranchohillside.com',
     price: '$2,998',
     bedrooms: 2,
     bathrooms: 2,
     pets: 'yes',
     image: 'https://images1.apartments.com/i2/vDlJy_yTsSlPbFuo8K7hD8evpGuesAQIIhxEjmLzgcs/112/rancho-hillside-el-cajon-ca-primary-photo.jpg?p=1',
     user_id: 1
    }
    # {
    #   name: 'The Timbers Apartments',
    #    street: '1110 Petree St',
    #    city: 'El Cajon',
    #    zipcode: '92020',
    #    state: 'California',
    #    manager: 'Luke Skywalker',
    #    email: 'luke@timbersapartments.com',
    #    price: '$2,250',
    #    bedrooms: 1,
    #    bathrooms: 1,
    #    pets: 'yes',
    #    image: 'https://images1.apartments.com/i2/dJJ1Azn_d1HRR6DAZGcArBbsPHrM66-M8JrVMnTrjMI/112/the-timbers-apartments-el-cajon-ca-primary-photo.jpg?p=1',
    #    user_id: 1
    #   },
    #   {
    #   name: 'Rancho Hillside',
    #    street: '12367 Calle Albara',
    #    city: 'El Cajon',
    #    zipcode: '92019',
    #    state: 'California',
    #    manager: 'Bob John',
    #    email: 'bob@ranchohillside.com',
    #    price: '$2,998',
    #    bedrooms: 2,
    #    bathrooms: 2,
    #    pets: 'yes',
    #    image: 'https://images1.apartments.com/i2/vDlJy_yTsSlPbFuo8K7hD8evpGuesAQIIhxEjmLzgcs/112/rancho-hillside-el-cajon-ca-primary-photo.jpg?p=1',
    #    user_id: 1
    #   }
  ]
  
  apartments.each do |each_apartment|
    Apartment.create each_apartment
    puts "creating apartment #{each_apartment}"
  end