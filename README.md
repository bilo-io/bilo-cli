# FED Scripts

This is a repo containing scripts to automate various tasks for frontend projects.

There is a variant of each script for **powershell** (`.ps1`) and **bash** (`.sh`).

These are the following scripts, and how to use them.

|Script|Function|
|:-----|:-------|
|`init-app`|creates a basic webapp with [NodeJS](https://nodejs.org/en/), [Express](https://expressjs.com/) & [Webpack](https://webpack.js.org/)|
|`init-react`|creates a bare bones react application, based on top of an existing node webapp (pre-requisite: run `init-app`|
|`artifact-build`|builds an artifact from `src` folder, using webpack... output directory is `./artifact`|
|`artifact-deploy`|simulates a web deploy on your local machine, to test behaviour of webapp, before going to production|