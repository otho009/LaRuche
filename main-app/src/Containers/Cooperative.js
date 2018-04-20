import React, {Component} from "react";
import Header from "../Components/Header.js";
import Footer from "../Components/Footer.js";
import fruitCarousel from "../Images/fruitCarousel.jpeg";
import vegetablesCarousel from "../Images/vegetablesCarousel.jpeg";
import grainsCaroussel from "../Images/grainsCaroussel.jpeg";


const carouselContent = [fruitCarousel, grainsCaroussel, vegetablesCarousel]
export default class Cooperative extends Component {
  render() {
    return (
      <div className="container-fluid">
        <div className="jumbotron">
          <div className="container-fluid">
            <div className="row">
              <div className="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                <img className="rounded-circle d-block w-50" src=".../200x200?auto=yes&bg=777&fg=555&text=First slide" />
              </div>
              <div className="col-lg-4 col-md-6 col-sm-8 col-xs-12">
                <h1 className="display-5">Nom du Ruche</h1>
              </div>
            </div>
          </div>
        </div>
        <div className="container-fluid">
          <div className="row">
            <div className="col-lg-9 col-md-8 col-sm-12">
              Autres informations sur la ruche. (membres et table de point de collecte)
            </div>
            <div className="col-lg-3 col-md-4 col-sm-12">
              <div className="text-center">
                <h4>Produits vendus</h4>
              </div>
              <div className="container marketing">
                <div className="row">
                  <div className="col-lg-12">
                    <img className="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140" />
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
                    <p><a className="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <div className="col-lg-12">
                    <img className="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140" />
                    <h2>Heading</h2>
                    <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
                    <p><a className="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                  </div>
                  <div className="col-lg-12">
                    <img className="rounded-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140" />
                    <h2>Heading</h2>
                    <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                    <p><a className="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
