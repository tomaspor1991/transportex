import React from "react";
import './HomePage.css';
const HomePage = (props) => {
    return (
        <main className="holder">
            <div clasName="homeimg">
                <img src="img/home/img01.jpg" alt="avion" />
            </div>
            <div className="columnas">
                <div className="bienvenidos">
                    <h2>Bienvenidos</h2>
                    <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum vero, fugit ad eos odio ducimus
                        laborum. Distinctio suscipit eveniet nihil fugit eos! Cum, alias. Quaerat, sint dicta. Asperiores,
                        ad odio.</p>
                    <p> Lorem ipsum dolor sit amet consectetur, adipisicing elit. Earum vero, fugit ad eos odio ducimus
                        laborum. Distinctio suscipit eveniet nihil fugit eos! Cum, alias. Quaerat, sint dicta. Asperiores,
                        ad odio.</p>
                </div>
                <div className="testimonios">
                    <h2>Testimonios</h2>
                    <div class="testimonios">
                        <span className="cita">Simplemente Excelente</span>
                        <span className="autor">Juan Perez</span>
                    </div>
                </div>
            </div>


        </main>
    );
}

export default HomePage;