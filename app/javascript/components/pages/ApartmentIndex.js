import React, { Component } from 'react'
import { Card, CardImg, CardText, CardBody, CardTitle, CardSubtitle, Button } from 'reactstrap';
import { Nav, NavItem, NavLink } from 'reactstrap'

export default class ApartmentIndex extends Component {
  render() {
    return (
      <div>
        <h3>ApartmentIndex</h3>
        {this.props.apartments && 
          this.props.apartments.map((apartment, index) => {
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
