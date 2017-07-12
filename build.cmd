dotnet restore
cd src\Logging.Api
dotnet lambda package --configuration release --framework netcoreapp1.0 --output-package bin/release/netcoreapp1.0/deploy-package.zip