# RoR with Repository Pattern

## The Dev Container

When using VS Code the dev container is automatically build. It's currently based on Ubuntu 18.04.

when the dev container is built, it installs the following:

    * sudo
    * curl
    * yarn and dependencies
    * Ruby 2.6.3
    * Rails 6.0.0.rc1

## Useful links

https://www.hanselman.com/blog/RubyOnRailsOnWindowsIsNotJustPossibleItsFabulousUsingWSL2AndVSCode.aspx

Ubuntu 18.04 docker image: https://hub.docker.com/_/ubuntu

## Installing Dependencies on Ubuntu

Installing `sudo`: https://www.turnkeylinux.org/forum/support/20110125/sudo-command-not-found-turnkeylinux-drupal6

```bash
apt-get update
apt-get -y install sudo
```

Flag `-y` answers yes during installation

## Developing with Rails

Follow the guidelines to start developing your application. You may find the following resources handy:
    * [Getting Started with Rails](https://guides.rubyonrails.org/getting_started.html)
    * [Ruby on Rails Guides](https://guides.rubyonrails.org)
    * [The API Documentation](https://api.rubyonrails.org)
    * [Ruby on Rails Tutorial](https://www.railstutorial.org/book)
