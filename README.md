# How to Install Radical

## Kubernetes

### Required Tech

- Kompose
- Kubernetes

### Step 1: Choose a provider

I use GKE standard with one node, as Autopilot for some reason charged me 10 bucks in a day.

### Step 2: Get your connection details.

This involves getting a kubectl profile setup.

### Step 3: Build a version of the frontend.

Clone the [frontend](https://github.com/Rust-CMS/dashboard-cms) and run `docker build --build-args APIURL=<API URL> .`

After this, publish it somewhere (I put rustcms.org on DockerHub.)

### Step 4: Edit the docker-compose.yml file.

Remove `https://github.com/Rust-CMS/dashboard-cms` and add your URL.

Change the database password.

Change the APP_JWT_KEY env variable.

Run `kompose convert` in the working directory.

### Step 5: Deploy!

Run `./redeploy.sh`.

## Docker Compose

## Step 1

SSH on to a server of your choice. (Can be as low as 1 vCPU and 512 MB of ram. [rustcms.org](http://rustcms.org) runs on 2 vCPUs and 1 GB of RAM)

Install Docker and docker-compose.

(See how to do this for the OS of my choice, and what [rustcms.org](http://rustcms.org) runs on: [ubuntu](https://docs.docker.com/engine/install/ubuntu/))

## Step 2

Run: `git clone git@github.com:Rust-CMS/tooling.git && cd tooling`

## Step 3

Edit the `docker-compose.yml` file with an editor of your choice. (If you are on Ubuntu, do `nano docker-compose.yml`)

Change the `args` for the `frontend` to have the IP/domain name of your server. This is the url for the API.

In the `backend` section, change the address to the address of your database. It is by default set to a kubernetes setup.

## Step 4

Run `docker-compose up --detach`.

Let it sit while it compiles the frontend, and you're done!
