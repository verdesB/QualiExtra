import React from 'react';
import { Link } from 'react-router-dom';
import next from '../../../assets/next.svg';
import * as styles from './card.module.scss';
import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faCircleInfo} from "@fortawesome/free-solid-svg-icons";



const Card = ({ style, title, city, cover, id, coverBis }) => {

    return (
        <article className={styles[`${style}`]}>
            <div style={{position: 'absolute', top: '-1rem', zIndex: '30000', right: '0', backgroundColor: 'red'}}>
                <p>Disponible</p>
            </div>
            <div style={{position: 'relative'}} className={styles[`${style}__containerImg`]}>
                <img className={styles[`${style}__image`]} src={cover} alt=''></img>
            </div>
            <div className={styles[`${style}__container`]}>
                <h3 className={styles[`${style}__title`]}>{title}</h3>
                {/* <p className={styles[`${style}__rate`]}>4.5<span>⭐</span></p> */}
            </div>
            <p className={styles[`${style}__localisation`]}>{city}</p>
            <div className={styles[`${style}__containerAction`]}>
                <Link className={styles[`${style}__btn`]} to={`/package/${id}`}>
                    Détails <FontAwesomeIcon icon={faCircleInfo} />
                </Link>
            </div>

        </article>
    )
}

export default Card;