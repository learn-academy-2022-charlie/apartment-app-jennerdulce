// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentShow from './ApartmentShow'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })


describe("When ApartmentShow.js renders to the user", () => {

  it("displays apartment info", () => {
    let apartment =  {
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
    let catShowRender = shallow(<ApartmentShow apartment />)
    const apartmentShowContainer = catShowRender.find('[id="show-container"]')
    expect(apartmentShowContainer.length).toEqual(1)
  })
})
