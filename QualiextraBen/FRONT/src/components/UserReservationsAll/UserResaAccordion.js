import React from "react";
import './style.scss';
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import {Avatar} from "@mui/material";
import dayjs from "dayjs";
const UserResaAccordion = ({ purchase }) => {
    if (!purchase || !purchase.packages || !purchase.packages[0] || !purchase.packages[0].services || !purchase.packages[0].services[0]) {
        return null;
    }
    return (
        <Accordion className="accordion"  style={{ zIndex: '1'}}>
            <AccordionSummary
                expandIcon={<ExpandMoreIcon />}
                aria-controls="panel1a-content"
                id="panel1a-header"

            >
                <div style={{display: 'flex', alignItems: 'center', gap: '1rem'}}>
                    <Avatar src={purchase.packages[0].services[0].institution.cover}/>
                    <Typography>Forfait: {purchase.packages[0].name_pkg}</Typography>
                    <Typography>Du {dayjs(purchase.date_start).format('DD/MM/YYYY')} Au {dayjs(purchase.date_end).format('DD/MM/YYYY')} </Typography>
                </div>
            </AccordionSummary>
            <AccordionDetails>
                <div>
                    <Typography>
                        Nombre de packages: {purchase.quantity}
                    </Typography>
                    <Typography>
                        Date de réservation: {dayjs(purchase.createdAt).format('DD/MM/YYYY')}
                    </Typography>
                    <Typography>
                        Téléphone de l'établissement: 0{purchase.packages[0].services[0].institution.phone_ins}
                    </Typography>
                    <Typography>
                        Participants: {purchase.packages[0].capacity} pers./ forfait
                    </Typography>
                    <Typography>
                        Adresse de l'établissement: {purchase.packages[0].services[0].institution.adress_ins}
                    </Typography>
                    <Typography>
                        Ville de l'établissement: {purchase.packages[0].services[0].institution.city_ins}
                    </Typography>
                    <Typography>
                        Code Postal: {purchase.packages[0].services[0].institution.cp_ins}
                    </Typography>
                    <Typography>
                        Mail: {purchase.packages[0].services[0].institution.email_ins}
                    </Typography>
                </div>
            </AccordionDetails>
        </Accordion>
    );
}

export default UserResaAccordion;
