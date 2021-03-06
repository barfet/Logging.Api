FROM microsoft/aspnetcore-build:1.0-1.1

RUN npm install -g serverless && \
	apt-get -qq update && \
	apt-get -qq -y install zip && \
	apt-get -qq -y install dos2unix

WORKDIR /api

COPY . .

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["dos2unix build.sh && dotnet restore && cd src/Features.Api && dotnet run"]