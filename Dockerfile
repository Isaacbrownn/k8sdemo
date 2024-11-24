FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app
COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out
WORKDIR /app/out
EXPOSE 80
ENTRYPOINT ["dotnet","aqa.dll"]
