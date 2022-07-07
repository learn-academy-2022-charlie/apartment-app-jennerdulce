import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentNew from './pages/ApartmentNew'
import ApartmentEdit from './pages/ApartmentEdit'
import NotFound from './pages/NotFound'
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: []
    }
  }

  componentDidMount = () => {
    this.readApartments()
  }

  readApartments = () => {
    fetch("/apartments")
    .then(response => response.json())
    .then(apartments => this.setState({apartments: apartments}))
    .catch(errors => console.log("Apartment read errors:", errors))
  }

  createApartment = (apartment) => {
    fetch(`/newapartments/${this.props.current_user.id}`, {
    body: JSON.stringify(apartment),
    headers: {
      "Content-Type": "application/json"
    },
    method: "POST"
    })
    .then(response => response.json())
    .then(() => this.readApartments())
    .catch(errors => console.log("Apartment create errors:", errors))
  }

  render() {
    return (
        <Router>
          <Header {...this.props} />
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/apartmentindex"
            render={() => <ApartmentIndex user_id={this.props.current_user.id} logged_in={this.props.logged_in} apartments={this.state.apartments} />} />
            <Route
            path="/apartmentnew"
            render={() => <ApartmentNew createApartment={this.createApartment} />} 
            />

            <Route path="/apartmentshow/:id" 
            render={(props) => {
            let id = props.match.params.id
            let apartment = this.state.apartments.find(apartmentObject => apartmentObject.id == id)
            return <ApartmentShow apartment={apartment}/>
            }}
            
            return  />
            <Route path="/apartmentedit" component={ApartmentEdit} />
            <Route component={NotFound}/>
          </Switch>
          <Footer />
        </Router>
    )
  }
}

export default App