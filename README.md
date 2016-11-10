# dotnet-mono-docker
Base docker image including the dotnet cli (RTM) and mono

## Why?
The microsoft/dotnet image does not have any Mono support.

The previous microsoft/aspnet:latest or :clr tags would allow you to utilise .NET 4.5.1 DLLs with your ASP.NET MVC 6 application.

This docker image intends to fill this gap.

## Base operating system

The base operating system is Debian 8 (Jessie) due to importing from [microsoft/dotnet](https://hub.docker.com/r/microsoft/dotnet)

## What's included

### sdk tag

- dotnet sdk/cli preview2 and therefore the dotnet runtime (RTM)
- Mono (version 4.4.2.11)

### runtime tag

- dotnet runtime 1.0.1
- Mono (version 4.4.2.11)

## What's not

- NodeJS and therefore bower. If you need these, use [cl0sey/dotnet-mono-node-docker](https://github.com/CL0SeY/dotnet-mono-node-docker).
- An example app! See [cl0sey/dotnet-mono-aspnet-core-example](https://github.com/CL0SeY/dotnet-mono-aspnet-core-example) instead.
