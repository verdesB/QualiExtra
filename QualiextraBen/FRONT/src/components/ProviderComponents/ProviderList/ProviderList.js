import React, { useState } from 'react';
import '../ClientsOrders/accordionOrder.scss';
import { UseSignInStore } from '../../AuthLogin/signInStore';
import '../ProviderList/ProviderList.scss';
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import {Avatar} from "@mui/material";
import dayjs from "dayjs";

const ProviderList = ({providers}) => {
  const [isOpen, setIsOpen] = useState(false);
  const { isLoggedIn, isAdmin, isProvider } = UseSignInStore();
  return (
      <div style={{width: '100%'}}>
        {providers.map((provider) => (
      <Accordion key={provider.id} style={{width: '100%'}}>
        <AccordionSummary
            expandIcon={<ExpandMoreIcon />}
            aria-controls="panel1a-content"
            id="panel1a-header"
        >
          <div style={{display: 'flex', alignItems: 'center', gap: '1rem'}}>
          <Avatar/>
          <Typography>{provider.firstname}{' '}{provider.lastname}</Typography>
          </div>
        </AccordionSummary>
        <AccordionDetails>
          <div>
          <Typography>
            {provider.email}
          </Typography>
          <Typography>
           0{provider.phone_user}
          </Typography>
            <Typography>
              Crée le {dayjs(provider.createdAt).format('DD/MM/YYYY')}
            </Typography>
          </div>
        </AccordionDetails>
      </Accordion>
        ))}
</div>
  )
}

export default ProviderList;