# Description
free-website-framework is a collection of template repositories to be used as a blueprint for internet accessible projects without public access for free. So if you try to deploy a small application that you wish you can access on any device anywhere but requires authentication, you can follow these instructions.

The collection is a composition of AWS lambda backend using dynamoDB database and Cloudflare pages frontend with infrastructure deployed with terraform. Authentication is done with Google identity provider so you can add gmails that can access the website. All resources created in AWS and Cloudflare have big free limits so if a traffic is small the application will be free of charges.


# Diagram
![Diagram](diagram.svg)


# Prerequisites:

## Accounts:
1. AWS
2. Cloudflare
3. Google/Gmail

## CLIs:
1. aws
2. gh
3. docker
4. python
5. npm



# How to start a new project based on free-website-framework

To start a new project you can use `create-project.sh` script. Before running this script run `gh auth login`. It will clone repos to your current dir so run it from a folder you want to have code locally.

[create-project.sh](create-project.sh)

Now you can start developing `frontend` and `backend` repos with local testing. When you are happy and you want to deploy it to the internet you should go to `infra` and follow its `README.md`.

# Example

There are 3 `example` repos which deploy a simple app showing how long ago some action has happened.
#TODO add photos when deployment of `example` repos is finished.
