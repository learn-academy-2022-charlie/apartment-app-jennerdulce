import React, { Component } from 'react'
import { Nav, NavItem } from 'reactstrap'
import { Collapse, Navbar, NavbarToggler, NavbarBrand} from 'reactstrap';

class Header extends Component {
  constructor(props) {
    super(props);

    this.toggleNavbar = this.toggleNavbar.bind(this);
    this.state = {
      collapsed: true
    };
  }

  toggleNavbar() {
    this.setState({
      collapsed: !this.state.collapsed
    });
  }

  render() {

    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props
    console.log("logged_in:", logged_in)
    console.log("current_user:", current_user)

    return (
      <>
       <Navbar color="faded" light>
          <NavbarBrand href="/" className="mr-auto">reactstrap</NavbarBrand>
          <NavbarToggler onClick={this.toggleNavbar} className="mr-2" />
          <Collapse isOpen={!this.state.collapsed} navbar>
            <Nav navbar>
              <NavItem>
                <a href="/" className="nav-link">Home</a>
              </NavItem>
              <NavItem>
                <a href="/apartmentindex" className="nav-link">All Apartments</a>
              </NavItem>
              { logged_in &&
              <NavItem>
                <a href="/apartmentnew" className="nav-link">Add New Apartment</a>
              </NavItem>
              }
              {logged_in &&
                <NavItem>
                  <a href={sign_out_route} className="nav-link">Sign Out</a>
                </NavItem>
              }
              {!logged_in &&
                <NavItem>
                  <a href={sign_in_route} className="nav-link">Sign In</a>
                </NavItem>
              }
              {!logged_in &&
                <NavItem>
                  <a href={new_user_route} className="nav-link">Sign Up</a>
                </NavItem>
              }
            </Nav>
          </Collapse>
        </Navbar>
        {/* <h1>React in Rails with Devise</h1>
        <Nav>
          {logged_in &&
            <NavItem>
              <a href={sign_out_route} className="nav-link">Sign Out</a>
            </NavItem>
          }
          {!logged_in &&
            <NavItem>
              <a href={sign_in_route} className="nav-link">Sign In</a>
            </NavItem>
          }
          {!logged_in &&
            <NavItem>
              <a href={new_user_route} className="nav-link">Sign Up</a>
            </NavItem>
          }
        </Nav>
        <NavLink className="header-link" to="/apartmentindex">
            Index
        </NavLink>
        <NavLink className="header-link" to="/">
            Home
        </NavLink> */}
      </>
    )
  }
}
export default Header