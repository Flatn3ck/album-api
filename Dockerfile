FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY Album-Api/Album.Api/bin/Debug/net5.0/publish/ App/

# RUN dotnet restore
RUN dotnet publish -c Release -o out

WORKDIR /App

EXPOSE 8080

ENTRYPOINT ["dotnet", "Album.Api.dll"]