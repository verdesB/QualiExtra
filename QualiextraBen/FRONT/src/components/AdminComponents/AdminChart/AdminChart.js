import '../AdminChart/AdminChart.scss';
import { Line } from 'react-chartjs-2';



//fonction graphisme pour taux de réservations
const AdminChart = () => {
    const options = {
        scales: {
            x: {
                type: 'category', // or 'linear', 'time', etc.
                // other options...
            },
            y: {
                type: 'linear', // or 'category', 'time', etc.
                // other options...
            }
        }
        // other options...
    };
    const data = {

        // nom axe X
        labels: ['Janvier',
            'Février',
            'Mars',
            'Avril',
            'Mai',
            'Juin',
            'Juillet',
            'Aout',
            'Septembre',
            'Octobre',
            'Novembre',
            'Décembre'],

        // axe Y
        datasets: [
            {
                //légende couleur
                label: 'Nombres de réservations',
                // Lien avec X
                data: [12, 8, 3, 5, 2, 10, 15, 20, 19, 15, 10, 8],
                //zone de remplissage sous la barre du graphique
                fill: true,
                backgroundColor: 'rgb(255, 136, 17)',
                borderColor: 'rgb(0, 0, 0)',
            },
        ],
    };

    return (
        <>
            <div className='container__chartMap'>
                <div className='chart__container'>
                    <Line
                        style={{ position: 'relative', marginTop: '40' , minWidth: '50%', maxHeight: '35vh', padding: '2rem' }}
                        data={data} options={options}
                    />
                    
                </div>
                
            </div>
        </>
    );
}

export default AdminChart;