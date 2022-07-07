import React, { Component } from 'react'
import { Card, CardImg, CardText, CardBody, CardTitle, CardSubtitle, Button } from 'reactstrap';
import { NavLink } from 'react-router-dom'

export default class ApartmentIndex extends Component {
  
  render() {
    let userApartments
    let otherApartments
    let {apartments, logged_in, user_id} = this.props
    if (logged_in){
      userApartments = this.props.apartments.filter(apartment => apartment.user_id === user_id)
      otherApartments = this.props.apartments.filter(apartment => {
        apartment.user_id !== user_id
      })
    }
    
    return (
      <div>
        {logged_in &&
          <h1>My Apartments</h1>
        }
        {logged_in && 
          userApartments.map((apartment, index) => {
          return <Card id="index-card" key={index}>
              <CardBody id="card-body-index">
              <CardTitle>{apartment.name}</CardTitle>
              <CardImg id="card-image" src={apartment.image} alt="Card image" />
              <NavLink id="info-button" to={`/apartmentshow/${apartment.id}`}>
                  More Info
              </NavLink>
              </CardBody>
           </Card>
        })}

        {logged_in &&
        <h1>Other Apartments</h1>
        }
        {logged_in && 
          otherApartments.map((apartment, index) => {
          return <Card id="index-card" key={index}>
              <CardBody id="card-body-index">
              <CardTitle>{apartment.name}</CardTitle>
              <CardImg id="card-image" src={apartment.image} alt="Card image" />
              <NavLink id="info-button" to={`/apartmentshow/${apartment.id}`}>
                  More Info
              </NavLink>
              </CardBody>
           </Card>
        })} 
      </div>
    )
  }
}
