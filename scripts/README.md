Upload SBOM file to Dependency-Track via the REST api using powershell

- [./uploadSbom.ps1](uploadSbom.ps1)
```
powershell ./uploadSbom.ps1 -filePath ../build/reports/application.cdx.json -uploadUrl http://localhost:8081/api/v1/bom -apiKey odt_Noe8Y14ZoJCw5QsSXUa1SUUH5LYgTYs3 -projectUuid 7b0cb7b6-515a-41a7-aa9f-17a6f4db7489
powershell ./uploadSbom.ps1 -filePath ../build/reports/application.cdx.json -uploadUrl http://localhost:8081/api/v1/bom -apiKey odt_Noe8Y14ZoJCw5QsSXUa1SUUH5LYgTYs3 -projectName SbomDemoService -projectVersion 0.0.1
```


(Make sure executing Powershell scripts is enabled for the current user)
```
 Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```