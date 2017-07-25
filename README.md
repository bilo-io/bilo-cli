# FED Scripts

This is a repo containing scripts to automate various tasks for frontend projects.

There is a variant of each script for **powershell** (`.ps1`) and **bash** (`.sh`).

The table below lists these scripts and their effects.

|Script|Function|
|:-----|:-------|
|`build-artifact`|builds an artifact from `src` folder, using webpack... output directory is `./artifact`|
|`deploy-artifact`|simulates a  web deployment on your local machine - _(useful to test before production)_|
|`init-webapp`|creates a basic webapp with [NodeJS](https://nodejs.org/en/), [Express](https://expressjs.com/) & [Webpack](https://webpack.js.org/)|
|`init-webpack`|adds webpack to an existing NodeJS application|
|`init-react`|creates a bare bones react application, based on top of an existing node webapp (pre-requisite: run `init-app`|
|`init-express`|adds `express` & `express-history-api-fallback` to an existing NodeJS application|

# Background

This is a quick re-cap of what [React](https://facebook.github.io/react/), [NodeJS](https://nodejs.org/en/), [Express](https://expressjs.com/) & [Webpack](https://webpack.js.org/) are, and what problems they solve.