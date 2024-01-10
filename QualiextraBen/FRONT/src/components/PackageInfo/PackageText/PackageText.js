import React from "react";

const PackageText = ({ packageDetails }) => {

    return (
        <>
            <div className='Text__container'>
                <h1 style={{fontSize: '4rem', color: '241E4EFF', marginBottom: '3rem'}}>Description</h1>
                {packageDetails && packageDetails.services && packageDetails.services[0] && <p className='Text__title'>{packageDetails.services[0].name_serv}</p>}
                <div className='Text__text'>
                    <p className='Text__paragraph'></p>
                    {packageDetails && packageDetails.services && packageDetails.services[0] && <p className='Text__paragraph'>{packageDetails.services[0].description_serv}</p>}
                </div>
                {packageDetails && packageDetails.services && packageDetails.services[1] && <div><p className='Text__title'>{packageDetails.services[1].name_serv}</p><div className='Text__text'>
                    <p className='Text__paragraph'></p>
                    {packageDetails && packageDetails.services && packageDetails.services[1] && <p className='Text__paragraph'>{packageDetails.services[1].description_serv}</p>}
                </div></div>}
                <button className='Text__button' type="button">Plus d'informations</button>
            </div>
        </>
    )
}

export default PackageText;