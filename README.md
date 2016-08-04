# dotnet-mono-docker
Base docker image including the dotnet cli (RTM) and mono

## Why?
The microsoft/dotnet image does not have any Mono support.

The previous microsoft/aspnet:latest or :clr tags would allow you to utilise .NET 4.5.1 DLLs with your ASP.NET MVC 6 application.

This docker image intends to fill this gap.

## Base operating system

The base operating system is Ubuntu 16.04.

Reasoning for this:
- Attempts were made to inherit from [microsoft/dotnet](https://hub.docker.com/r/microsoft/aspnet), and install mono (i.e. on Debian Wheezy). The mono apt-get install was not supported on Wheezy.
- Installing dotnet on Debian Jessie (i.e. inheriting from [library/mono](https://hub.docker.com/r/library/mono)) caused a lot of issues with out-of-date packages.
- The dotnet install process for Ubuntu 16.04 is [very straightforward](https://www.microsoft.com/net/core#ubuntu).

## What's included

- dotnet cli (1.0.0-preview2-003121) and therefore the dotnet runtime (RTM)
- Mono (version 4.4.2.11)

## What's not

- NodeJS and therefore gulp or bower. If you need these, use [cl0sey/dotnet-mono-node-docker](https://github.com/CL0SeY/dotnet-mono-node-docker).
- An example app! See [cl0sey/dotnet-mono-rc2-aspnet-example](https://github.com/CL0SeY/dotnet-mono-rc2-aspnet-example) instead. (needs updating for xenial / RTM / mono 4.4)
