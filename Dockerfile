FROM buildpack-deps:xenial-curl

# Reduce package restore sizes + times
ENV NUGET_XMLDOC_MODE skip

RUN apt-get update \
	&& apt-get install -y apt-transport-https \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893 \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
	&& echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list \
    && echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/4.4.2.11 main" > /etc/apt/sources.list.d/mono-xamarin.list \
	&& apt-get update \
	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget dotnet-dev-1.0.0-preview2-003121 \
	&& rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/share/dotnet/shared/Microsoft.NETCore.App/1.0.0/System.Native.so /usr/lib/libSystem.Native.so
