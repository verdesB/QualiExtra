import React, { useState, useEffect, useRef } from 'react';
import { useNavigate } from 'react-router-dom';
import '../GridChoice/GridChoice.scss';
import {setMinDate} from '../../Utils/BlockPreviousDate.js'

// Enregistrez le locale français


const GridChoice = ({ packageDetails }) => {
    const [dateArrivee, setDateArrivee] = useState(new Date());
    const [dateDepart, setDateDepart] = useState(new Date());
    const [nombrePackage, setNombrePackage] = useState(0);
    const [formData, setFormData] = useState({});
    const [prixTotal, setPrixTotal] = useState(0);
    const [errorMessage, setErrorMessage] = useState('')

    // const dateInputRef = useRef();
    // setMinDate(dateInputRef);

    const navigate = useNavigate();
    const handleSubmit = (event) => {
        event.preventDefault();
         const now = Date.now()

        if (dateArrivee < now || dateDepart  <now ) {
            console.log("La date d'arrivée ou de départ est antérieure à aujourd'hui.");
        }

        // Vérifiez si les dates sélectionnées sont dans la plage de dates disponible
        if (dateArrivee >= packageDetails.date_start && dateDepart <= packageDetails.date_end) {

                // Les dates sélectionnées sont dans la plage de dates disponible
                if (nombrePackage <= packageDetails.quantity) {
                    // La quantité est disponible
                    setFormData({
                        dateArrivee,
                        dateDepart,
                        nombrePackage,


                    });
                    setErrorMessage("Dates et quantité valides");
                    navigate('/final-reservation', {state: {formData, packageDetails}})

                } else {
                    // La quantité n'est pas disponible
                    setErrorMessage(`Le nombre maximum de packages est ${packageDetails.quantity}`);
                }


        } else {
            // Les dates sélectionnées ne sont pas dans la plage de dates disponible
            setErrorMessage("Désolé, ce package n'est pas disponible pour les dates que vous avez choisies.");
        }

    };

    useEffect(() => {
        const total = packageDetails && nombrePackage ? (packageDetails.price * nombrePackage) : null;
        setPrixTotal(total);

        setFormData((prevFormData) => ({
            ...prevFormData,
            dateArrivee,
            dateDepart,
            nombrePackage,
            prixTotal: total,  // Ajoutez cette ligne
        }));
    }, [dateArrivee, dateDepart, nombrePackage]);

    return (
        <>
            <div className='grid__container'>
                <form onSubmit={handleSubmit}>
                    <div className='grid__dateContainer'>
                        <div className='grid__inputDate'>
                            <label className='grid__label'>Arrivée
                                <input
                                    type='date'
                                    value={dateArrivee}
                                    onChange={(event) => setDateArrivee(event.target.value)}
                                    locale='fr' dateFormat="dd/MM/yyyy"

                                ></input>
                                {/* <input type='date' selected={dateArrivee} onChange={(date) => setDateArrivee(date)} locale='fr' dateFormat="dd/MM/yyyy"></input> */}
                            </label>
                            <label className='grid__label'>Départ
                                <input type='date' value={dateDepart}  onChange={(event) => setDateDepart(event.target.value)} locale='fr' dateFormat="dd/MM/yyyy"></input>
                            </label>
                        </div>
                        <label className='grid__label'>Nombre de package
                            <span className='grid__checkbox'>
                                {/* <button className='grid__buttonMembers' onClick={decrementer}>-</button> */}
                                <input id='members' type="number" value={nombrePackage} onChange={(e) => setNombrePackage(parseInt(e.target.value))}
                                    className='grid__input' />
                                {/* <button className='grid__buttonMembers' onClick={incrementer}>+</button> */}
                            </span>
                        </label>
                        <div className='grid__resultContainer'>
                            <p className='grid__price'>{prixTotal}€</p>
                            <button type="submit" className='grid__button'>Ajouter au panier</button>
                        </div>
                        <p style={{color:"red"}}>{errorMessage? errorMessage : null}</p>
                    </div>
                </form>
            </div>
        </>
    )
}

export default GridChoice;