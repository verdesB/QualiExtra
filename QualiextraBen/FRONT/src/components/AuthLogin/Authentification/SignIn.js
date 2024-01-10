import { UseSignInStore } from "../signInStore";
import { Navigate } from "react-router-dom";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import {faEyeSlash, faEye} from '@fortawesome/free-regular-svg-icons'

const SignIn = ({showPassword, setShowPassword, toggleShowPassword}) => {
  const { data, handleChange, postSignIn, isLoggedIn, errorMessage } = UseSignInStore();
  if (isLoggedIn) {
    return <Navigate to='/' />
  }
  return (
    <section className="auth__bloc">
      <div className="auth__title__container">
        <h2 className="auth__title">
          Se <span className="auth__title__color">connecter</span>
        </h2>
      </div>

      <form action="POST">
        <label className="auth__label" htmlFor="email">
          Adresse mail*
        </label>
        <input
          className="auth__input"
          type="email"
          name="email"
          id="emailLog"
          onChange={handleChange}
          value={data.mail}
        />

        <label className="auth__label" htmlFor="password">
          Mot de passe*
        </label>
        <div className="auth__password">
          <input
          className="auth__input"
          type={showPassword ? "text" : "password"}
          name="password"
          id="passwordLog"
          onChange={handleChange}
          value={data.password}
        /><button type="button" onClick={() =>toggleShowPassword()} >{showPassword ? <FontAwesomeIcon icon={faEye} /> : <FontAwesomeIcon icon={faEyeSlash} />}</button></div>
        
        {errorMessage && <div className="error-message">{errorMessage}</div>}
      </form>

      <div className="button__container">
        <input
          className="button__conexion"
           onClick={postSignIn}
          value="Se connecter"
        />
      </div>
    </section>
  );
};
export default SignIn;
