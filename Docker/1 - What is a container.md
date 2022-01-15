# What is a container and what problems does it solve?

A container is a way to package application with all the necessary dependencies and configuration.
It generates an artifact that could be easily shared and moved around, making the development and deployment more efficient.

## Where does the container live?

Containers live in a container repository - that's a special tye of storage for containers, it could work in two ways:

- Private repositories: usually used by companies to store their containers;
- Public containers repositories: you can browse and find a lot of different applications (Dockerhub - for docker images).

## How containers help the application development

### How the App development work before containers

Usually when we have a team of devs working in a application, we'll need to install most of the services directly in your system. Every dev will need to install the binaries of the services needed, configure them and run it locally, with that in mind we run into the following problems:

- Installation process different on each OS environment;
- Many steps where something could go wrong;
- Could have a lot of different services that could needed to be configure manually and took a lot of time.

### How the App development work after containers

We actually don't have to install any of the services directly on your SO, with the container we can:

- Own isolated env, based in a linux image;
- Package with all needed configuration;
- One command to install the app;
- Could run the same app with diffent versions at the same time.

## How containers help the application deployment

### How the App deploy work before containers

The dev team will produce artifacts and together with a set of intructions of how to actually install and configure them in a server.

Dev team will give those artifacts over to the Operations team, and them will handle setting up the environment for setting up the application. With that in mind we run into a few problems:

- The Ops team will have to configure and install everything directly in a OS, that could lead to conflicts with dependency versions and mutiple services running on the same host.
- Developers could forget to mention configurations in the deployment guide or the Ops team can misunderstand some of the guidelines for the deployment, that could lead into a back and foward communication until the application is successfully deployed in the server.

### How the App deployment work after containers

Now the Dev and the Ops team work together to package the application in a container. We don't need an environment configuration needed on the server - except the Docker Runtime.
