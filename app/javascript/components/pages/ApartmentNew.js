import React, { Component } from 'react'
import {Form, FormGroup, Label, Input, Button} from 'reactstrap'
import { Redirect } from 'react-router-dom'
// import './ApartmentNew.css'

export default class ApartmentNew extends Component {
  constructor(props){
    super(props)
    this.state = {
        newApartment: {
          name: '',
          street: '',
          city: '',
          zipcode: '',
          state: '',
          manager: '',
          email: '',
          price: '',
          bedrooms: 0,
          bathrooms: 0,
          pets: '',
          image: '',
         },
        submitted: false
    }
}

handleChange = (e) => {
  let targetValue 
  let targetName = e.target.name
  if (targetName == 'bedrooms' || targetName == 'bathrooms'){
    targetValue = parseInt(e.target.value)
  } else {
    targetValue = e.target.value
  }
  
  let { newApartment } = this.state
  newApartment[targetName] = targetValue
  this.setState({newApartment: newApartment})
}

handleSubmit = () => {
  this.props.createApartment(this.state.newApartment)
  this.setState({submitted: true})
}

  render() {
    console.log("HI")
    if (this.state.submitted) {
      return (<Redirect to={'/apartmentindex'} />);
  }
    return (
      <div id="row">
        <h1>HELLO WORLD</h1>
        <div id="card">
            <Form>
                <FormGroup>
                    <Label for="name">
                        Name
                    </Label>
                    <Input
                        name="name"
                        placeholder="Apartment Company"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.name}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="street">
                        Street
                    </Label>
                    <Input
                        name="street"
                        placeholder="Street"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.street}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="city">
                        City
                    </Label>
                    <Input
                        name="city"
                        placeholder="City"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.city}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="zipcode">
                        Zipcode
                    </Label>
                    <Input
                        name="zipcode"
                        placeholder="Zipcode"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.zipcode}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="state">
                        State
                    </Label>
                    <Input
                        name="state"
                        placeholder="State"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.state}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="manager">
                        Manager
                    </Label>
                    <Input
                        name="manager"
                        placeholder="Manager of the Complex"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.manager}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="email">
                        Email
                    </Label>
                    <Input
                        name="email"
                        placeholder="Manager Email"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.email}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="price">
                        Price
                    </Label>
                    <Input
                        name="price"
                        placeholder="Price"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.price}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="bedrooms">
                        Bedrooms
                    </Label>
                    <Input
                        name="bedrooms"
                        placeholder="Number of Bedrooms"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.bedrooms}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="bathrooms">
                        Bathrooms
                    </Label>
                    <Input
                        name="bathrooms"
                        placeholder="Number of Bathrooms"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.bathrooms}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="pets">
                        Pets
                    </Label>
                    <Input
                        name="pets"
                        placeholder="Pets Allowed"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.pets}
                        />
                </FormGroup>
                <FormGroup>
                    <Label for="image">
                        Image
                    </Label>
                    <Input
                        name="image"
                        placeholder="Image Url"
                        type="text"
                        onChange={this.handleChange}
                        value={this.state.newApartment.image}
                        />
                </FormGroup>
                <Button id="submit" onClick={this.handleSubmit}>
                    Submit
                </Button>
            </Form>
        </div>
      </div>
    )
  }
}
