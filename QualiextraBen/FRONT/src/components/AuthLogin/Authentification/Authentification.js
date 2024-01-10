import React, {useState} from "react";
//Importation des composant enfant de Authentification
import SignUp from "./SignUp";
import SignIn from "./SignIn";
//Importation du style du composant Authentification
import "../Authentification/Authentification.scss";
//Importation des images sous forme de variables


//Création du composant Authentification qui representera une section de la page AuthLogin
// Avec des formulaires : d'inscription et de connexion
const Authentification = () => {
  const [showPassword, setShowPassword] = useState(false);

  const toggleShowPassword = () => {
    
    setShowPassword(!showPassword);
  };
  return (
    <div className="auth__container">
      <SignUp showPassword={showPassword} setShowPassword={setShowPassword} toggleShowPassword={toggleShowPassword}/>
      <div className="line__color"></div>
      <SignIn showPassword={showPassword} setShowPassword={setShowPassword} toggleShowPassword={toggleShowPassword}/>
    </div>
  );
};

export default Authentification;
