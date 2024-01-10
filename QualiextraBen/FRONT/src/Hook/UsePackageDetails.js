const useSafeAccess = (object, path, defaultValue) => {
    return path.reduce((obj, key) => (obj && obj[key] !== 'undefined') ? obj[key] : defaultValue, object);
}

// Utilisation dans le composant PackageHome
const coverImage1 = useSafeAccess(packageDetails, ['services', 0, 'cover_serv'], 'Chargement...');
const coverImage2 = useSafeAccess(packageDetails, ['services', 1, 'cover_serv'], 'Chargement...');