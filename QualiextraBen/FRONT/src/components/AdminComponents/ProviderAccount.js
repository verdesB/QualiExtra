import Footer from "../Footer/Footer";
import Header from "../Header/Header";
import ProviderList from "../ProviderComponents/ProviderList/ProviderList";
import {useEffect, useState} from "react";
import axios from "axios";

const apiUrl = process.env.REACT_URL_API;

const ProviderAccount = () => {
    const [providers, setProviders] = useState([]);
    const fetchProviders = async () => {
        try {
            const response = await axios.get(`${apiUrl}/users_provider`);
            setProviders(response.data);
        } catch (error) {
            // alert('Erreur lors de la récupération des prestataires:', error);
        }
    };
    useEffect(() => {

        fetchProviders()
    }, []);
    console.log(providers)
    return (
        <>
            <Header />
            <section className="clientsOrders">
                <h2 className="clientsOrders__title">Liste des comptes prestataires</h2>
                <section  className="clientsOrders__accordionContainer">
                    <ProviderList providers={providers}/>
                </section>
            </section>
            <Footer />
        </>
    )
}

export default ProviderAccount;