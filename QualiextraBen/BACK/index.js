import cors from 'cors';
import express, { Router } from 'express';
import * as dotenv from 'dotenv';
import swaggerJsdoc from 'swagger-jsdoc';
import swaggerUi from 'swagger-ui-express';

import router from './app/Router/router.js';


dotenv.config();

const app = express();
const port = process.env.PORT || 3000;
app.use(cors())
app.use(router);

app.use(express.urlencoded({ extended: true }));

const options = {
  definition: {
    openapi: "3.1.0",
    info: {
      title: "Qualiextra Express API with Swagger",
      version: "0.1.0",
      description:
        "This is a simple CRUD API application made with Express and documented with Swagger",
      license: {
        name: "MIT",
        url: "https://spdx.org/licenses/MIT.html",
      },
      contact: {
        name: "Qualiextra",
        url: "https://qualiextra.com",
        email: "info@email.com",
      },
    },
    servers: [
      {
        url: "http://localhost:3000",
      },
    ],
  },
  apis: ["./app/routes/*.js"],
};

const specs = swaggerJsdoc(options);
app.use(
  "/api-docs",
  swaggerUi.serve,
  swaggerUi.setup(specs, {
    explorer: true,
    customCssUrl:
      "https://cdn.jsdelivr.net/npm/swagger-ui-themes@3.0.0/themes/3.x/theme-newspaper.css",
  })
);


app.listen(port, () => {
  console.log(`Serveur lancé sur http://localhost:${port}/`);
});
