import React from 'react'
import {
  BrowserRouter as Router,
  Route
} from 'react-router-dom'
import Hello from './Hello'

const App = (props) => (
  <Router>
    <div>
      <Route exact path='/' component={Hello} />
    </div>
  </Router>
)
export default App
