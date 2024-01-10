
import React, { useEffect } from 'react';
import Card from '../Carrousel-top/Card/Card.js';
import './pepitas.scss';
import { PepitasStore } from './PepitasStore.js';

const Pepitas = () => {
    const { fetchAllInstitutions, institutions, fetchAllPackages, packages } = PepitasStore(state => state)
    useEffect(() => {
        fetchAllPackages();
        fetchAllInstitutions();
    }
        , [fetchAllInstitutions, fetchAllPackages]);
    return (
        <section className='pepites'>
    <h2 className='pepites__title'>Nos <span>Pépites</span></h2>
    <div className='pepites__cardContainer'>
    { packages && packages.length > 0 ? packages.sort(() => Math.random() - 0.5).slice(0, 5).map((pkg) => (
        <Card key={pkg ? pkg.id : index} style="card2" id={pkg ? pkg.id : index} title={pkg ? pkg.name_pkg : null} city={pkg && pkg.services && pkg.services[0] && pkg.services[0].institution ? pkg.services[0].institution.city_ins : null} cover={pkg && pkg.services && pkg.services[0] ? pkg.services[0].cover_serv : null} coverBis={pkg && pkg.services && pkg.services[1] ? pkg.services[1].cover_serv : null} />
    )) : <p>Pas de packages disponibles</p>}
    </div>
</section>
    )
}

export default Pepitas;