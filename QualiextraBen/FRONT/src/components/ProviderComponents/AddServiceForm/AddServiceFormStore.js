import { create } from "zustand";
import axios from "axios";
import { UseSignInStore } from "../../AuthLogin/signInStore";
const apiUrl = process.env.REACT_URL_API;
const AddServiceFormStore = create((set, get) => {
    
    return ({

        data: {
            institution_id: 0,
            cover_serv: "",
            name_serv: "",
            description_serv: "",
            hour_start: "",
            hour_end: "",
        },
        institutions: [],
        error: null,
        

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

        postService: async () => {
            const response = await axios.post(`${apiUrl}/services`, get().data)
            window.alert('Service crée avec succès');
        },
        getInstitutionsByProviderId: async () => {
            const userId = UseSignInStore.getState().user.id;
            try {
                const response = await axios.get(`${apiUrl}/users_provider/${userId}/institutions`);
                set({ institutions: response.data });
            } catch (err) {
                set({error: 'Une erreur est survenue lors de la récuperation des institutions'});
            }
        }
    })
})

export default AddServiceFormStore;
