/**
* @swagger
* components:
*   schemas:
*     User:
*       type: object
*       required:
*         - role
*         - firstname
*         - lastname
*         - email
*         - adress_user
*         - city_user
*         - cp_user
*         - phone_user
*         -  createdAt
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of user
*         role:
*           type: string
*           description: role user
*         firstname:
*           type: string
*           description: firstname of user
*         lastname:
*           type: string
*           description: lastname of user
*         email:
*           type: string
*           description: email adress of user
*         adress_user:
*           type: string
*           description: adress of user
*         city_user:
*           type: string
*           description: city of user
*         cp_user:
*           type: string
*           description: code postal user
*         phone_user:
*           type: string
*           description: phone user
*         createdAt:
*           type: string
*           format: date
*           description: The date the user was added
*       example:
*         id: 59
*         role: user
*         firstname: Aria
*         lastname: stark
*         email: a.stark@gmail.com
*         adress_user: rue de la demeure noir et blanche
*         city_user: Braavos
*         cp_user: 10000
*         phone_user: 0625897845
*         createdAt: 2023-11-05 13:16:48.515+01
*/
/**
* @swagger
* tags:
*   name: Users
*   description: API gestions des utilisateurs
* /users:
*   post:
*     summary: Création d'un nouvel utilisateur
*     tags: [Users]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/User'
*     responses:
*       200:
*         description: Utilisateur créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/User'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Users
*   description: API gestion des utilisateurs
* /users:
*   get:
*     summary: Listes des utilisateurs
*     tags: [Users]
*     responses:
*       200:
*         description: Listes des utilisateurs
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/User'
*   post:
*     summary: Créer un nouvel utilisateur
*     tags: [Users]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/User'
*     responses:
*       200:
*         description: Utilisateur créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/User'
*       500:
*         description: Some server error
* /users/{id}:
*   get:
*     summary: Trouver un utilisateur par son Id
*     tags: [Users]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id utilisateur
*     responses:
*       200:
*         description: La réponse de l'utilisateur par identifiant
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/User'
*       404:
*         description: utilisateur non trouvé
*   put:
*    summary: Mettre à jour l'utilisateur par l'identifiant
*    tags: [Users]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id utilisateur
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/User'
*    responses:
*      200:
*        description: L'utilisateur est mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/User'
*      404:
*        description: utilisateur non trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer l'utilisateur par identifiant
*     tags: [Users]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id utilisateur
*
*     responses:
*       200:
*         description: L'utilisateur est supprimé
*       404:
*         description: utilisateur non trouvé
*/


/**
* @swagger
* components:
*   schemas:
*     Provider:
*       type: object
*       required:
*         - role
*         - firstname
*         - lastname
*         - email
*         - adress_user
*         - city_user
*         - cp_user
*         - phone_user
*         -  createdAt
*       properties:
*         id:
*           type: float
*           description: The auto-generated id of provider
*         role:
*           type: string
*           description: role provider
*         firstname:
*           type: string
*           description: firstname of provider
*         lastname:
*           type: string
*           description: lastname of provider
*         email:
*           type: string
*           description: email adress of provider
*         adress_provider:
*           type: string
*           description: adress of provider
*         city_provider:
*           type: string
*           description: city of provider
*         cp_provider:
*           type: string
*           description: code postal provider
*         phone_provider:
*           type: string
*           description: phone provider
*         createdAt:
*           type: string
*           format: date
*           description: The date the provider was added
*       example:
*         id: 60
*         role: provider
*         firstname: John
*         lastname: snow
*         email: j.snowexamplefr
*         adress_user: route du nord
*         city_user: Winterfell
*         cp_user: 00000
*         phone_user: 0123547698
*         createdAt: 2023-11-05 13:16:48.515+01
*/

/**
* @swagger
* tags:
*   name: Providers
*   description: API gestion des prestataires
* /users_provider:
*   post:
*     summary: Créer un nouveau prestataires
*     tags: [Providers]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Provider'
*     responses:
*       200:
*         description: Le prestataires est créé
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Provider'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Providers
*   description: API gestion des prestataire
* /users_provider:
*   get:
*     summary: Listes des prestataires
*     tags: [Providers]
*     responses:
*       200:
*         description: Listes des prestataires
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Provider'
*   post:
*     summary: Création d'un nouveau prestataire
*     tags: [Providers]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Provider'
*     responses:
*       200:
*         description: Le prestataire est créé
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Provider'
*       500:
*         description: Some server error
* /users_provider/{id}/services/{id}:
*   get:
*     summary: Récupérer un service par son id et id du prestataires
*     tags: [Providers,Services]
*     parameters:
*       - in: path
*         name: user_providerId
*         schema:
*         required: true
*         description: id prestataire
*       - in: path
*         name: serviceId
*         schema:
*         required: true
*         description:  id service
*     responses:
*       200:
*         description: La réponse du service par identifiant
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       404:
*         description: Le service n'a pas été trouvé
* /users_provider/{id}/institutions:
*   get:
*     summary: Récupérer les institutions d'un prestataires par son id
*     tags: [Providers,Institutions]
*     parameters:
*       - in: path
*         name: user_providerId
*         schema:
*         required: true
*         description: id prestataire
*     responses:
*       200:
*         description: La réponse des institutions
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Institution'
*       404:
*         description: L'établissement n'a pas été trouvé
* /users_provider/{id}/institutions/{id}/services:
*   get:
*     summary: Récupérer les services par id institutions et id prestataires
*     tags: [Providers,Institutions,Services]
*     parameters:
*       - in: path
*         name: user_providerId
*         schema:
*         required: true
*         description: id prestataires
*       - in: path
*         name: institutionId
*         schema:
*         required: true
*         description: id institution
*     responses:
*       200:
*         description: la réponse des services
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       404:
*         description: Le service n'a pas été trouvé
* /users_provider/{id}:
*   get:
*     summary: Récupérer un prestataires par son id
*     tags: [Providers]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id prestataire
*     responses:
*       200:
*         description: La réponse du prestataire par identifiant
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Provider'
*       404:
*         description: Le prestataire n'a pas été trouvé
*   put:
*    summary: Mise à jour du prestataire par son id
*    tags: [Providers]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id prestataire
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Provider'
*    responses:
*      200:
*        description: Le prestataire a été mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Provider'
*      404:
*        description: Le prestataire n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer un prestataire par son identifiant
*     tags: [Providers]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id prestataire
*
*     responses:
*       200:
*         description: Le prestataire a été supprimé
*       404:
*         description: Le prestataire n'a pas été trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Institution:
*       type: object
*       required:
*         - name_ins
*         - cover
*         - email_ins
*         - adress_ins
*         - city_ins
*         - cp_ins
*         - phone_ins
*         - openning
*         - experiences
*         - paverage_price
*         - user_id
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of institution
*         name_ins:
*           type: string
*           description: name institution
*         cover:
*           type: string
*           description: cover institution
*         email_ins:
*           type: string
*           description: email institution
*         adress_ins:
*           type: string
*           description: adress institution
*         city_ins:
*           type: string
*           description: city institution
*         cp_ins:
*           type: string
*           description: code postal institution
*         phone_ins:
*           type: string
*           description: phone institution
*         opening:
*           type: string
*           description: hour opening of institution
*         experiences:
*           type: string
*           description: description services
*         average_price:
*            type: integer
*            description: average price
*         user_id:
*            type: integer
*       example:
*         id: 44
*         name_ins:  Le Bistro Parisien
*         cover: https://drive.google.com/uc?export=view&id=1bCYBKU88r2DsKQXj5DqOpcBupkgpM6iC
*         email_ins: lebistroparisien@fic
*         adress_ins: 12 Rue de la Paix
*         city_ins: paris
*         cp_ins: 75002
*         phone_ins: 33
*         openning:
*         experiences: Degustation de vins, cours de cuisine francaise
*         paverage_price: 50
*         user_id: 57
*/

/**
* @swagger
* tags:
*   name: Institutions
*   description:  API gestion des étatblissements
* /institution:
*   post:
*     summary: Créer un nouvel établissement
*     tags: [Institutions]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Institution'
*     responses:
*       200:
*         description: Etablissement créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Institution'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Institutions
*   description: API gestion des étatblissements
* /institutions:
*   get:
*     summary: Listes des établissements
*     tags: [Institutions]
*     responses:
*       200:
*         description: Listes des établissements
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Institution'
*   post:
*     summary: Créer un nouvel établissement
*     tags: [Institutions]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Institution'
*     responses:
*       200:
*         description: L'établissement a été créé
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Institution'
*       500:
*         description: Some server error
* /institutions/{id}/services:
*   get:
*     summary: Récupérer les services par l'identifiant établissement
*     tags: [Institutions]
*     parameters:
*       - in: path
*         name: institutionId
*         schema:
*         required: true
*         description: id Etablissement
*     responses:
*       200:
*         description: La réponse des services
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       404:
*         description: L'établissement n'a pas été trouvé
* /institutions/{id}:
*   get:
*     summary: Récupérer l'établissement par son identifiant
*     tags: [Institutions]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id institution
*     responses:
*       200:
*         description: La réponse de l'établissement par son id
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Institution'
*       404:
*         description: L'établissement n'a pas été trouvé
*   put:
*    summary: Mise à jour de l'établissement par son identifiant
*    tags: [Institutions]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id Etablissement
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Institution'
*    responses:
*      200:
*        description: L'établissment a été mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Institution'
*      404:
*        description: L'établissement n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer l'établissement par son identifiant
*     tags: [Institutions]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id Etablissement
*
*     responses:
*       200:
*         description: L'établissment a été supprimé
*       404:
*         description: L'établissment n'a pas été trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Service:
*       type: object
*       required:
*         - name_serv
*         - cover_serv
*         - description_serv
*         - hour_start
*         - hour_end
*         - institution_id
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of service
*         name_serv:
*           type: string
*           description: name service
*         cover_serv:
*           type: string
*           description: cover of service
*         description_serv:
*           type: string
*           description: descrpition service
*         hour_start:
*           type: string
*           description: start time of stay
*         hour_end:
*           type: string
*           description: end of stay time
*         institution_id:
*           type: string
*           description: identifier of the institutions linked to the service
*       example:
*         id: 106
*         name_serv:  Degustation de vins
*         cover_serv: https://drive.google.com/uc?export=view&id=1mdFwPDeLQZw9xPEPwib5f31PeU5KTkWk
*         description_serv: Le bistro parisien vous invite Ó dÚcouvrir les richesses du terroir francais...
*         hour_start: 15:00
*         hour_end: 19:00
*         institution_id: 44

*/

/**
* @swagger
* tags:
*   name: Services
*   description: API gestions des services
* /service:
*   post:
*     summary: Créer un nouveau service
*     tags: [Services]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Service'
*     responses:
*       200:
*         description: Le service a été créé
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Services
*   description: API gestions des services
* /services:
*   get:
*     summary: Listes des services
*     tags: [Services]
*     responses:
*       200:
*         description: Listes des services
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Service'
*   post:
*     summary: Créer un nouveau service
*     tags: [Services]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Service'
*     responses:
*       200:
*         description: Le service a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       500:
*         description: Some server error
* /services/{id}:
*   get:
*     summary: Récupérer un service par son identifiant
*     tags: [Services]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id service
*     responses:
*       200:
*         description: La réponse du service par son id
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Service'
*       404:
*         description: Le service n'a pas été trouvé
*   put:
*    summary: mise à jour du service ar son identifiant
*    tags: [Services]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description:  id service
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Service'
*    responses:
*      200:
*        description: Le service a été mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Service'
*      404:
*        description: Le service n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer un service par son identifiant
*     tags: [Services]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id service
*
*     responses:
*       200:
*         description: Le service a été supprimé
*       404:
*         description: Le service n'a pas été trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Package:
*       type: object
*       required:
*         - name_pkg
*         - price
*         - quantity
*         - date_start
*         - date_end
*         - available
*         - capacity
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of package
*         name_pkg:
*           type: string
*           description: name of package
*         price:
*           type: integer
*           description: price of package
*         quantity:
*           type: string
*           description: lquantity of package available
*         date_start:
*           type: string
*           description: start date of stay
*         date_end:
*           type: string
*           description: end date of stay
*         capacity:
*           type: integer
*           description: capacity of people for the package
*       example:
*         id: 106
*         name_pkg: La Totale Azur
*         price: 250
*         quantity: 5
*         date_start: 2023-11-01
*         date_end: 2023-11-05
*         available: t
*         capacity: 2
*/

/**
* @swagger
* tags:
*   name: Packages
*   description: API gestion des forfaits
* /package:
*   post:
*     summary: Créer un nouveau forfait
*     tags: [Packages]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Package'
*     responses:
*       200:
*         description: Le forfait a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Package'
*       500:
*         description: Some server error
*
*/
// 
/**
* @swagger
* tags:
*   name: Packages
*   description: API gestion des forfaits
* /packages:
*   get:
*     summary: Listes des forfaits
*     tags: [Packages]
*     responses:
*       200:
*         description: Listes des forfaits
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Package'
*   post:
*     summary: Créer un nouveau forfait
*     tags: [Packages]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Package'
*     responses:
*       200:
*         description: Le forfait a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Package'
*       500:
*         description: Some server error
* /packages/{id}/prices:
*   get:
*     summary: Récupérer le prix d'un forfait par id forfait
*     tags: [Packages]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id forfait
*     responses:
*       200:
*         description: Le prix du forfait 
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Package'
*       404:
*         description: Le forfait n'a pas été trouvé
* /packages/{id}:
*   get:
*     summary: Récupérer le forfait par son identifiant 
*     tags: [Packages]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id forfait
*     responses:
*       200:
*         description: La réponse du forfait par son id 
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Package'
*       404:
*         description: Le forfait n'a pas été trouvé
*   put:
*    summary: Mise à jour du forfait par son id 
*    tags: [Packages]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id forfait
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Package'
*    responses:
*      200:
*        description: Le forfait a été mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Package'
*      404:
*        description: Le forfait n'a pas été trouvé 
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer le forfait par son identifiant
*     tags: [Packages]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id forfait
*
*     responses:
*       200:
*         description: Le forfait a été supprimé
*       404:
*         description: Le forfait n'a pas été trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Purchase:
*       type: object
*       required:
*         - quantity
*         - price
*         - date_start
*         - date_end
*         - hour_start
*         - hour_end
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of purchase
*         quantity:
*           type: string
*           description: quantity of purchase
*         price:
*           type: integer
*           description: price of purchase
*         date_start:
*           type: string
*           format: date
*           description: start date of stay
*         date_end:
*           type: string
*           format: date
*           description: end date of stay
*         hour_start:
*           type: string
*           description: start time of stay
*         hour_end:
*           type: string
*           description: end of stay time
*         createdAt:
*           type: string
*           format: date
*           description: The date the purchase was added
*       example:
*         id: 1
*         quantity: 10
*         price: 150
*         date_start: 2023-11-04
*         date_end: 2023-11-05
*         hour_start:
*         hour_end:
*         user_id: 59
*         createdAt: 2023-11-05 13:16:48.515+01
*/

/**
* @swagger
* tags:
*   name: Purchases
*   description: API gestion des commandes
* /purchase:
*   post:
*     summary: Créer une nouvelle commande
*     tags: [Purchases]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Purchase'
*     responses:
*       200:
*         description: La commande a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Purchase'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Purchases
*   description: API gestion des commandes
* /purchases:
*   get:
*     summary: Listes des commandes
*     tags: [Purchases]
*     responses:
*       200:
*         description: Listes des commandes
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Purchase'
*   post:
*     summary: Créer une nouvelle commande
*     tags: [Purchases]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Purchase'
*     responses:
*       200:
*         description: La commande a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Purchase'
*       500:
*         description: Some server error
* /purchases/{id}:
*   get:
*     summary: Récupérer la commande par son identifiant 
*     tags: [Purchases]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description:  id commande
*     responses:
*       200:
*         description: La réponse de la commande par son id
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Purchase'
*       404:
*         description: La commande n'a pas été trouvé
*   put:
*    summary: Mise à jour de la commande par son id 
*    tags: [Purchases]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id commande
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Purchase'
*    responses:
*      200:
*        description: La commande à été mise à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Purchase'
*      404:
*        description: La commande n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer la commande par son identifiant
*     tags: [Purchases]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id commande
*
*     responses:
*       200:
*         description: La commande a été supprimé
*       404:
*         description: La commande n'a pas été trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Category:
*       type: object
*       required:
*         - name_catg
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of category
*         name_catg:
*           type: string
*           description: name of category
*       example:
*         id: 1
*         name_catg: restauration
*/

/**
* @swagger
* tags:
*   name: Categories
*   description: API gestions des catégories
* /category:
*   post:
*     summary: Créer une nouvelle catégorie
*     tags: [Categories]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Category'
*     responses:
*       200:
*         description: La catégorie a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Category'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Categories
*   description: API gestions des catégories
* /categories:
*   get:
*     summary: Listes des categories
*     tags: [Categories]
*     responses:
*       200:
*         description: Listes des categories
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Category'
*   post:
*     summary: Créer une nouvelle catégorie
*     tags: [Categories]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Category'
*     responses:
*       200:
*         description: La catégorie a été créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Category'
*       500:
*         description: Some server error
* /categories/{id}:
*   get:
*     summary: Récupérer les catégories par son identifiant
*     tags: [Categories]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id categorie
*     responses:
*       200:
*         description: La réponse de la catégorie par son id 
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Category'
*       404:
*         description: La catégorie n'a pas ét trouvé
*   put:
*    summary: Mise à jour de la catégorie par son identifiant 
*    tags: [Categories]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id categorie
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Category'
*    responses:
*      200:
*        description: La catégorie a été mise à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Category'
*      404:
*        description: La catégorie n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer la catégorie par son identifiant 
*     tags: [Categories]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id categorie
*
*     responses:
*       200:
*         description: La catégorie a été supprimé 
*       404:
*         description: La catégorie n'a pas ét trouvé
*/

/**
* @swagger
* components:
*   schemas:
*     Style:
*       type: object
*       required:
*         - name_style
*       properties:
*         id:
*           type: integer
*           description: The auto-generated id of category
*         name_style:
*           type: string
*           description: name of style
*       example:
*         id: 1
*         name_catg: ephemere
*/

/**
* @swagger
* tags:
*   name: Styles
*   description: API gestion des styles
* /style:
*   post:
*     summary: Créer un style
*     tags: [Styles]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Style'
*     responses:
*       200:
*         description: le style est créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Style'
*       500:
*         description: Some server error
*
*/

/**
* @swagger
* tags:
*   name: Styles
*   description: API gestion des styles
* /styles:
*   get:
*     summary: Listes des styles
*     tags: [Styles]
*     responses:
*       200:
*         description: Listes des styles
*         content:
*           application/json:
*             schema:
*               type: array
*               items:
*                 $ref: '#/components/schemas/Style'
*   post:
*     summary: Créer un style
*     tags: [Styles]
*     requestBody:
*       required: true
*       content:
*         application/json:
*           schema:
*             $ref: '#/components/schemas/Style'
*     responses:
*       200:
*         description: le style est créé.
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Style'
*       500:
*         description: Some server error
* /styles/{id}:
*   get:
*     summary: Récupérer le style par son identifiant 
*     tags: [Styles]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id style
*     responses:
*       200:
*         description: la réponse du style par son id
*         content:
*           application/json:
*             schema:
*               $ref: '#/components/schemas/Style'
*       404:
*         description: le style n'a pas été trouvé
*   put:
*    summary: Mise à jour du style par son identifiant
*    tags: [Styles]
*    parameters:
*      - in: path
*        name: id
*        schema:
*        required: true
*        description: id style
*    requestBody:
*      required: true
*      content:
*        application/json:
*          schema:
*            $ref: '#/components/schemas/Style'
*    responses:
*      200:
*        description: Le style a été mis à jour
*        content:
*          application/json:
*            schema:
*              $ref: '#/components/schemas/Style'
*      404:
*        description: le style n'a pas été trouvé
*      500:
*        description: Some error happened
*   delete:
*     summary: Supprimer le style par son identifiant
*     tags: [Styles]
*     parameters:
*       - in: path
*         name: id
*         schema:
*         required: true
*         description: id style
*
*     responses:
*       200:
*         description: Le style a été supprimé
*       404:
*         description: Le style n'a pas été trouvé
*/