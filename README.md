WARNING: Tooling is currently in an unsupported stage. Radical is not deployable.

# How to Install Radical

## Step 1

SSH on to a server of your choice. (Can be as low as 1 vCPU and 512 MB of ram. [rustcms.org](http://rustcms.org) runs on 2 vCPUs and 1 GB of RAM)

Install Docker and docker-compose.

(See how to do this for the OS of my choice, and what [rustcms.org](http://rustcms.org) runs on: [ubuntu](https://docs.docker.com/engine/install/ubuntu/))

## Step 2

Run: `git clone git@github.com:Rust-CMS/tooling.git && cd tooling`

## Step 3

Edit the `docker-compose.yml` file with an editor of your choice. (If you are on Ubuntu, do `nano docker-compose.yml`)

Change the `args` for the `frontend` to have the IP/domain name of your server. This is the url for the API.

## Step 4

Run `docker-compose up --detach`.

Let it sit while it compiles the frontend, and you're done!
