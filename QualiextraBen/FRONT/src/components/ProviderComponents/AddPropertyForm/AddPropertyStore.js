import { create } from 'zustand';
import axios from 'axios';

const apiUrl = process.env.REACT_URL_API;

export const AddPropertyStore = create((set, get) => {

    return ({
        data: {
            name_ins: "",
            cover: "",
            adress_ins: "",
            city_ins: "",
            cp_ins: "",
            experiences: "",
            average_price: "",
            phone_ins: "",

        },
        handleChange: (event) => {
            const { name, value } = event.target;
            set((state) => {
                // Je fais une copie de data contenu dans le state
                const { data } = state;
                // Je modifie la valeur correspondant au name sur ma copie de data
                data[name] = value;
                // J'écrase l'ancien state par celui-ci via un spread-operator
                return {
                    ...state,
                    data: data
                }
            })

        },
        postProperty: async () => {
            const response = await axios.post(`${apiUrl}/institution`, get().data)
            window.alert('Etablissement crée avec succès!');
        }
    })
})
