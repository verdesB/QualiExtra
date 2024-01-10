import React, {useState} from "react";
import './illustrations.scss';
import winTime from "../../assets/winTime.svg";
import idea from "../../assets/idea.svg";
import qualityXP from "../../assets/qualityXP.svg";
import { Carousel } from 'react-responsive-carousel';
import "react-responsive-carousel/lib/styles/carousel.min.css";

const Illustrations = () => {
    const illustrations = [
        {src: winTime, alt: "", text: "Gagner du temps"},
        {src: idea, alt: "", text: "Donner de l'inspiration"},
        {src: qualityXP, alt: "", text: "Vivre des expériences de qualités sans voyager"}
    ];
    return (
        <section style={{marginBottom: '0.5rem'}}>
        <Carousel infiniteLoop autoPlay interval={6000} showThumbs={false} style>
            {illustrations.map((illustration, index) => (
                <section className="illustrations">
                    <div key={index} className="illustrations__container">
                        <img className="illustrations__img" src={illustration.src} alt={illustration.alt}></img>
                        <p className="illustrations__text">{illustration.text}</p>
                    </div>

            </section> ))}
        </Carousel>
        </section>
    );
};
export default Illustrations;
