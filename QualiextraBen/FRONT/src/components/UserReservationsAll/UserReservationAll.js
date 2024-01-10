import React, { useState, useEffect } from 'react';
import axios from "axios";
import UserResaAccordion from "./UserResaAccordion";
import './userResaAccordionAll.scss';
import shape from '../../assets/blob1.svg'

const UserReservationAll = () => {
    const [profile, setProfile] = useState(null)
    const [myPurchases, setMyPurchases] = useState([]);
    // //! recuperer mes commandes et dynamiuser les reservation par id user 
    useEffect(() => {
        const fetchMyProfile = async () => {
            const response = await axios.get(`http://localhost:3000/profile`, {
                headers: {
                    'Content-Type': 'application/json',
                },
            });
            setProfile(response.data);
        };

        fetchMyProfile();
    }, []);

    useEffect(() => {
        if (profile) {
            const fetchMyPurchases = async () => {
                const response = await axios.get(`http://localhost:3000/users/${profile.id}/purchases`, {
                    headers: {
                        'Content-Type': 'application/json',
                    },
                });
                setMyPurchases(response.data);
            };

            fetchMyPurchases();
        }
    }, [profile]);

    return (
        <section className="UserResaAll">
                    <h1 style={{fontSize: '3rem', color: '#241E4EFF', marginBottom: '2rem'}} >Mes Réservations</h1>


            <div style={{display: 'flex', justifyContent: 'center', width: '100%'}}>
            <div className="UserResaAllContainer" >

                {myPurchases ? myPurchases.map(purchase => (
                    <UserResaAccordion key={purchase.id} purchase={purchase}/>
                )) : <p>Chargement des achats...</p>}
            </div>
            </div>
        </section>
    )
}
export default UserReservationAll;