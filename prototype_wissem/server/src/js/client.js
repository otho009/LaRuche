import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter, Route } from 'react-router-dom';
import Bootstrap from "./vendor/bootstrap.native";

//import web pages
import Layout from "./pages/Layout";
import SignIn from "./pages/SignIn";
import WhoWeAre from "./pages/WhoWeAre";

//target the div that will be rendered
let app = document.getElementById('app');

ReactDOM.render(
  <BrowserRouter>
    <Route path="/" component={Layout} />
  </BrowserRouter>,
  app);
