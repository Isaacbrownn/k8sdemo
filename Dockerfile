FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app
COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out
WORKDIR /app/out
ENV ASPNETCORE_URLS=http://0.0.0.0:80
EXPOSE 80
ENTRYPOINT ["dotnet", "aqa.dll"]
