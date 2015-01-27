*--------------Course Details--------------*

## Instructor: José Mota

## Difficulty: Intermediate

## Source Files Location:

https://github.com/josemota/dockerapp

## Topic: Code

## Categories:

Ruby on Rails, Ruby, Docker, Deployment

## Software/Languages/Frameworks (include version):

Rails 4.1.8, Ruby 2.1, Docker 1.4.1, boot2docker (Win/Mac)

## Course Rate: $3500

*--------------Course Outline--------------*

# Course Name:

Deploy a Rails Application with Docker

# Course Description:

This course will cover the process of deploying a standard database-backed
Rails application into a Docker container setup. The popularity of this process
is becoming quite substantial, due to its set of features and potential for
easier, more valuable deployments.

# Source Files Description:

Source files on GitHub contain the completed Rails application, organised into
industry-standard folders, along with a Dockerfile and complementary deployment
files.

*--------------Course--------------*

# 1 Introduction

## 1.1 Introduction

Welcome to the course! In this lesson you'll be introduced to the topic of
Docker and its role within a Rails application deployment.

## 1.2 Installing Docker

The first thing to do to get started is to install Docker. Without it you won't
be able to deploy the application. There are many ways to do it, depending on
what system you are using.

**Related links**

* [Docker website](https://docker.com)
* [Docker installation notes](https://docs.docker.com/installation/)

## 1.3 Building a Sample Rails Application

In this lesson we'll create a really simple Rails application. It will be our
context for deploying with Docker. It will have a basic database-backed model,
supported by a scaffold generator.

# 2 Docker Setup

## 2.1 Creating a Base Docker Image - part 1

Now that the context is set up and all of the tools are installed, let's start
thinking about how our Docker filesystem will look like. We're going to install
a lot of packages as well as writing some configuration files that support our
Rails environment.

**Related Links**

* [Dockerfile reference guide](https://docs.docker.com/reference/builder)

## 2.2 Creating a Base Docker Image - part 2

This is part 2 on creating a Docker image to host our Rails application.

## 2.3 Creating a Postgres Database Container

We're almost finished with setting up the Rails application in the Docker image
we've been building. However, we still need to create a support for our data.
In this lesson we'll configure a database container to accomplish it. Only then
we'll be able to run the app.

## 2.4 Setting up the Rails Application - part 1

Now that the database is up and running, we can finish preparing our
application container in order to connect to the database.

**Note:** If you want to check the docker machine's IP address when on Windows or
Mac, use `boot2docker ip`.

## 2.5 Setting up the Rails Application - part 2

This is part 2 on connecting and booting the Rails application with our
database.

## 2.6 Setting up Nginx

Following up on booting our application, we'll need to configure a way of
serving CSS and Javascript assets. We'll use nginx for that purpose. We're
going to extend our Dockerfile in the way that it allows for the package
installation and configuration.

# 3 Progressing Further

# 3.1 Redeploying Changes

We've reached a stable point in our deployment environment. The application
runs smoothly from top to bottom. We will need to keep doing our work and
deploy new changes to our Docker server.

We're going to add some changes to our application logic, commit them to our
online repository and redeploy the server based on those changes.

# 4 Conclusion

## 4.1 Final Review

Thank you for taking the time in viewing this course. We hope you've enjoyed
learning about Docker and its deployment and provisioning workflow. If you have
any suggestions or feedback to improve our content, please let us know!
