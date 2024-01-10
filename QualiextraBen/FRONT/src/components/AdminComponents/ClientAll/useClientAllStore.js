import { create } from 'zustand';
import axios from 'axios';

const apiUrl = process.env.REACT_URL_API;
const useClientAllStore = create(set => ({
    users: [],
    error: null,
    fetchUsers: async () => {
        try {
            const response = await axios.get(`${apiUrl}/users`);
            set({ users: response.data })
        } catch (err) {
            set({ error: 'Une erreur est survenue lors de la récuperation des clients' });
        }
    },
    deleteUser: async (id) => {
        try {
            await axios.delete(`${apiUrl}/users/${id}`);
            set(state => ({ users: state.users.filter(user => user.id !== id) }));
            alert('User deleted successfully');
        } catch (error) {
            alert('Something went wrong');
        }
    }
}))

export default useClientAllStore;


