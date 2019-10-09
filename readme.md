# RoR with Repository Pattern

Sample code demonstrating use of repository pattern in Ruby on Rails (RoR).

## Prerequisities for this Repository

    * VS Code, version 1.38.1 or later
    * VS Code Extension `ms-vscode-remote.vscode-remote-extensionpack`, version 0.17.0 or later
    * Git, version 2.23 or later

Everything else will be installed either a) when you create the dev container (see below) or b) by running commands once inside the container.

## The Dev Container

When using VS Code the dev container is automatically built, started and connect to. It's currently based on `ruby:2.6.2`. Note that the base image is a debian based linux docker image.

When the dev container is built, it also installs the following:

    * sqlite3
    * yarn and dependencies
    * Rails 6.0.0
    * VS Code estensions for RoR development

The build contaioner can be created in two different ways (which under the hood are actually the same):

At the terminal using:

    ```
    npm run dev:up
    ```

By installing the remote development extension in VS Code, then opening the folder in VS Code. You'll be prompted if you want to reopen the folder inside the container.

## Useful commands

### Installing all Gems

To ensure all gems are installed that are listed in `Gemfile`, execute the following command in a terminal window in VS Code:

    ```
    bundle install
    ```

You should now be able to start the rails server.

You need this command only when you create or recreate the dev container or when you add or remove gems.

### Start the Rails Server

To start the rails server execute the following command in a terminal window within VS Code:

    ```
    rails server -b 0.0.0.0
    ```

The option `-b` will tell the server to bind to all IP addresses. If you leave it out the web browser on your host will not be able to connect, even though the port 3000 (default port) has been opened in the `/.devcontainer/docker-compose.yml` file.

The server can now be reached at http://localhost:3000 You can leave the server running while you work on your code.

### Executing Tests

To run tests execute the following command in a terminal window within VS Code:

    ```
    rails test
    ```

If you want to run all tests in a file you can try something like this:

    ```
    rails test test/controllers/article22_controller_test.rb
    ```

If you want to run only one specific test in a file try something like this:

    ```
    rails test test/controllers/article22_controller_test.rb:9
    ```


## Useful links

Repository pattern with Ruby on Rails: https://medium.com/@laertis.pappas/repository-pattern-in-ruby-i-decoupling-activerecord-and-persistence-e395e1b0cf69

Ruby development with VS Code: https://www.hanselman.com/blog/RubyOnRailsOnWindowsIsNotJustPossibleItsFabulousUsingWSL2AndVSCode.aspx

Testing with Ruby on Rails: https://guides.rubyonrails.org/testing.html

## Developing with Rails

Follow the guidelines to start developing your application. You may find the following resources handy:
    * [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html)
    * [Ruby on Rails Guides](https://guides.rubyonrails.org)
    * [The API Documentation](https://api.rubyonrails.org)
    * [Ruby on Rails Tutorial](https://www.railstutorial.org/book)

## Troubleshooting

Here are things to try if run into problems with this repository.

### VS Code Fails To Load In Dev Container

Two options: First option is to just retry which solves most issues.

If that doesn't help, you can try resetting docker completely and then rebuilding the dev container in termal. Follow these steps:

    1. Execute `docker stop $(docker ps -a -q)` to stop all running docker containers
    2. Execute `docker system prune -a` to remove all containers, images, volumnes, networks etc.

Build dev container from terminal window, in the root directory of this repository execute `npm run dev:up` (if you have npm installed) or execute the following command:

    ```
    docker-compose -f .devcontainer/docker-compose.yml up -d && docker-compose -f .devcontainer/docker-compose.yml exec dev bash
    ```

If this succeeds, exit the dev container with `exit` and then in VS Code reload the folder in the dev container.
