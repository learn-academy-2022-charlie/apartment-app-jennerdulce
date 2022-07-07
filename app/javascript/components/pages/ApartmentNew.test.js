// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentNew from './ApartmentNew'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })

describe("When ApartmentNew renders", () => {
  let apartmentNewRender
  beforeEach(() => {
      apartmentNewRender = shallow(<ApartmentNew />)
  })
  it("displays a form to create a apartment", () => {
      const apartmentNewFormRender = apartmentNewRender.find("Form")
      expect(apartmentNewFormRender.length).toEqual(1)
  })
  it("displays an input for the apartments name", () => {
      const apartmentNewNameInputRender = apartmentNewRender.find('[name="name"]')
      expect(apartmentNewNameInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments street", () => {
      const apartmentNewAgeInputRender = apartmentNewRender.find('[name="street"]')
      expect(apartmentNewAgeInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments city", () => {
      const apartmentNewCityInputRender = apartmentNewRender.find('[name="city"]')
      expect(apartmentNewCityInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments zipcode", () => {
      const apartmentNewZipcodeInputRender = apartmentNewRender.find('[name="zipcode"]')
      expect(apartmentNewZipcodeInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments state", () => {
      const apartmentNewStateInputRender = apartmentNewRender.find('[name="state"]')
      expect(apartmentNewStateInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments manager", () => {
      const apartmentNewManagerInputRender = apartmentNewRender.find('[name="manager"]')
      expect(apartmentNewManagerInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments manager's email", () => {
      const apartmentNewEmailInputRender = apartmentNewRender.find('[name="email"]')
      expect(apartmentNewEmailInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments price", () => {
    const apartmentNewPriceInputRender = apartmentNewRender.find('[name="price"]')
    expect(apartmentNewPriceInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments bedrooms", () => {
      const apartmentNewBedroomsInputRender = apartmentNewRender.find('[name="bedrooms"]')
      expect(apartmentNewBedroomsInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments bathrooms", () => {
      const apartmentNewBathroomsInputRender = apartmentNewRender.find('[name="bathrooms"]')
      expect(apartmentNewBathroomsInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments pets", () => {
    const apartmentNewPetsInputRender = apartmentNewRender.find('[name="pets"]')
    expect(apartmentNewPetsInputRender.length).toEqual(1)
  })
  it("displays an input for the apartments image", () => {
    const apartmentNewImageInputRender = apartmentNewRender.find('[name="image"]')
    expect(apartmentNewImageInputRender.length).toEqual(1)
  })
})
