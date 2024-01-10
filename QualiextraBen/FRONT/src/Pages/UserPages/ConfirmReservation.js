import Footer from "../../components/Footer/Footer";
import Header from "../../components/Header/Header";
import Illustrations from "../../components/Illustrations/Illustration";
import ConfirmResa from "../../components/MyReservation/ConfirmationResa";
import Confetti from "../../components/Confetti/Confetti";

const ConfirmReservation = () => {
    return (
        <>
            <Header />
            <main role="main">
                <ConfirmResa />
                <Illustrations />
                <Confetti/>
            </main>
            <Footer />
        </>
    )
}
export default ConfirmReservation;