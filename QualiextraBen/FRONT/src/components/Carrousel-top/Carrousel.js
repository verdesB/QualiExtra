import React, {useEffect}from 'react';
import { Carousel } from 'react-responsive-carousel';
import "react-responsive-carousel/lib/styles/carousel.min.css";
import '../Carrousel-top/carrousel.scss';
import Card from './Card/Card';
import { PepitasStore } from '../pepitas/PepitasStore';

const MyCarousel = () => {
    const {  fetchAllPackages, packages } = PepitasStore(state => state)
    useEffect(() => {
        

         fetchAllPackages();
        }
    , [fetchAllPackages]);
    
        return (
            <div className="container">
                <Carousel infiniteLoop autoPlay interval={6000} showThumbs={false}>
                { packages && packages.length > 0 ? packages.sort(() => Math.random() - 0.5).slice(0, 7).map((pkg, index) => (
    <div key={pkg ? pkg.id : index}>
        <img className="carousel__img" src={pkg && pkg.services && pkg.services[0] ? pkg.services[0].cover_serv: null}/>
        <Card key={pkg ? pkg.id : index} id={pkg ? pkg.id : index} title={pkg && pkg.services && pkg.services[0] && pkg.services[0].institution ? pkg.services[0].institution.name_ins : null} cover={pkg && pkg.services && pkg.services[0] && pkg.services[0].institution ? pkg.services[0].institution.cover : null} style="card1" />
        <div className='carousel__containerText'>
            <div className='carousel__containerstyle'>
                <p className='carousel__text1'>En ce moment</p>
                <p className='carousel__text2'>Package</p>
                <h2 className='carousel__title'>{pkg ? pkg.name_pkg : null}</h2>
                <li>
                    <li>{pkg && pkg.services && pkg.services[0] ? pkg.services[0].name_serv : null }</li>
                    <li>{pkg && pkg.services && pkg.services[1] ? pkg.services[1].name_serv : null }</li>
                </li>
            </div>
        </div>
    </div>
)) : <p>Pas de packages disponibles</p>}
                </Carousel>
            </div>
        );
    };

export default MyCarousel;
