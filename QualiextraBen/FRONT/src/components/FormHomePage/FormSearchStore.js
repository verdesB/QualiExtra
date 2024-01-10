import { create } from 'zustand';
import axios from 'axios';

const apiUrl = process.env.REACT_URL_API;

export const FormSearchStore = create((set, get) => {

    return ({
        data: {
            arrivalDate: "",
            leaveDate: "",
            members: 1,
            keywords: "",
        },
        errorMessage: "",
        fetchPkgSearch: [],
        handleChange: (event) => {
            const { name, value } = event.target;
            set((state) => {
                const { data } = state;
                data[name] = value;
                return {
                    ...state,
                    data: data
                }
            })
        },

        incrementMembers: (event) => {
            event.preventDefault();
            set((state) => {
                const { data } = state;
                data.members += 1;
                return {
                    ...state,
                    data: data
                }
            })
        },

        decrementMembers: (event) => {
            event.preventDefault();
            set((state) => {
                const { data } = state;
                if (data.members > 1) {
                    data.members -= 1;
                    return {
                        ...state,
                        data: data
                    }
                }
            })
        },
        handleSubmit: async (event) => {
            event.preventDefault()
            const { data } = get();
            set({ errorMessage: "" });
            try {
                const response = await axios.get(`${apiUrl}/search`, { params: data })
                set({ fetchPkgSearch: response.data });
            } catch (error) {
                set({ errorMessage: 'Aucun résultat pour votre recherche' });

            }
        }
    })
})