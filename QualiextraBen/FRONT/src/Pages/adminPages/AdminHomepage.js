import Header from "../../components/Header/Header";
import Footer from "../../components/Footer/Footer";
import AdminChart from "../../components/AdminComponents/AdminChart/AdminChart";
import FilteredButton from "../../components/AdminComponents/FilteredButton/FilteredButton";
import AdminButton from "../../components/AdminComponents/AdminButton/AdminButton";

const AdminHomepage = () => {
    return (
        <>
            <Header />
            <main role="main" style={ {width: '100%',} }>
            {/*<AdminChart />*/}
            <AdminButton />
            <FilteredButton />
            </main>
            <Footer />
        </>
    )
}

export default AdminHomepage;