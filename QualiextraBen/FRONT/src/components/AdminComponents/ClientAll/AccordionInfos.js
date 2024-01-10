import React, { useState } from 'react';
import * as Accordion from "@radix-ui/react-accordion";
import AccordionTrigger from "../../UserReservationsAll/AccordionElements/AccordionTrigger";
import AccordionContent from "../../UserReservationsAll/AccordionElements/AccordionContent";

const AccordionInfos = ({ user, deleteUser }) => {
  const [isOpen, setIsOpen] = useState(false);
  return (
  <Accordion.Root className="AccordionRoot" type="single" collapsible style={{width: '70%'}} >
    <Accordion.Item className="AccordionItem" value="item-1">
      <AccordionTrigger>
        <div className='infosClient__boxTop'>
           <div className='infosClient__nameBox'>
           <span>Nom:</span>
           <p>{user.lastname}</p>
           </div>
           <div className='infosClient__surnameBox'>
           <span>Prénom:</span>
           <p>{user.firstname}</p>
           </div>

        </div>
         <div className='infosClient__mailBox'>
         <span>Email:</span>
         <p>{user.email}</p>
         </div>
         <div className='infosClient__phoneBox'>
         <span>Numéro:</span>
         <p>{user.phone_user}</p>
         </div>

    </AccordionTrigger>
    <AccordionContent>
        <div className='infosClient__nbrResaBox'>
            <span>Nombre de réservations:</span>
            <p>3</p>
        </div>
        <div className='infosClient__createdAtBox'>
            <span>Date de création:</span>
            <p>2023-01-01</p>
        </div>
        <div className='infosClient__dateResaBox'>
            <span>Date de réservation:</span>
            <p>2023-01-02</p>
        </div>
        <button>Bloquer</button>
        <button onClick={() => deleteUser(user.id)}>Supprimer</button>
    </AccordionContent>
  </Accordion.Item>
  </Accordion.Root>
  )
}

export default AccordionInfos;