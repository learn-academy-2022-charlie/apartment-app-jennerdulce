import React, { Component } from 'react';
import { Card, CardImg, CardText, CardBody,
    CardTitle, CardSubtitle, Button } from 'reactstrap';
import { NavLink, Redirect } from 'react-router-dom'

class Show extends Component {
    constructor(props) {
        super(props)
        this.state = {
            deleted: false
        }
    }

  //   handleDelete = () => {
  //     this.props.deleteCat(this.props.cat.id)
  //     this.setState({deleted: true})
  // }

    render() {
        const { apartment } = this.props
        return (
            <div id="show-container">
              <img src={apartment.image} alt="image of property" />
              <div>
              <span>{apartment.state} / {apartment.city} / {apartment.name}</span>
              </div>
              <div>
              <div>
                <h2>{apartment.name}</h2>
                <div>{apartment.street}, {apartment.city}, {apartment.state} {apartment.zipcode}</div>
              </div>
                <div>
                  <h4>Contact This Property</h4>
                  <p>Contact Us</p>
                  <p>Manager: {apartment.manager}</p>
                  <p>Email: {apartment.email}</p>
                  <p>Phone: (555) 555 - 5555</p>
                </div>
              </div>
              <div>
              <div>
                <h4>Rent</h4>
                <h3>{apartment.price}</h3>
              </div>
              <div>
                <h4>Bedrooms</h4>
                <h3>{apartment.bedrooms}</h3>
              </div>
              <div>
                <h4>Bathrooms</h4>
                <h3>{apartment.bathrooms}</h3>
              </div>
              <div>
                <h4>Pets</h4>
                <h3>{apartment.pets}</h3>
              </div>
              </div>
              <div>
              <h2>About {apartment.name}</h2>
              <p>Our warm and inviting apartment community is set among a beautifully landscaped neighborhood surrounded by every recreation imaginable. Our beautiful community offers spacious one and two bedroom apartment homes designed with your comfort and convenience in mind. Each one of our homes is a unique combination of luxury and attention to detail. We offer amenities that will surpass your expectations and make the difference between a place to live and a place to call home. Rancho Hillside is a luxury apartment community where nature's beauty meets luxury living. Relax by the sparkling swimming pool, work out in the fitness center which offers Zumba classes, or get some work done in the state-of-the-art business center.</p>
              </div>
          {/* <div id="button-container">
              <NavLink id="update-button" to={`/catedit/${cat.id}`}>Update Cat</NavLink>
              <button id="delete-button" onClick={this.handleDelete} >
                  Delete Cat
              </button>
          </div> */}
            </div>
        );
    }
}

export default Show;