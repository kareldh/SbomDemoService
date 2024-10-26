# SbomDemoService

Spring Boot 3.3 demo application with the new CycloneDX autoconfiguration
https://spring.io/blog/2024/05/24/sbom-support-in-spring-boot-3-3

## What is SBOM?
Software Bill Of Materials: declares the inventory of software components and dependencies. Analogous to the traditional Bill Of Materials (BOM) in manufacturing that lists all the materials/components/parts used to create an end product. 

## Why do we need SBOM?
Keeping track of vulnerabilities and thus of your dependencies is as important as ever.

### Legislation
#### Europe/Belgium
- NIS2 https://ccb.belgium.be/nl/document/de-nis2-richtlijn-wat-betekent-dit-voor-mijn-organisatie
- DORA https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en
- CRA https://ccb.belgium.be/en/cyber-resilience-act-cra

### Managing critical vulnerabilities
Log4J vulnerability 2022 https://www.cisa.gov/news-events/news/apache-log4j-vulnerability-guidance

## How can we get generate an SBOM?
### Spring Boot
https://spring.io/blog/2024/05/24/sbom-support-in-spring-boot-3-3
### NPM
https://docs.npmjs.com/cli/v10/commands/npm-sbom
### Others
https://github.com/orgs/CycloneDX/repositories

https://cyclonedx.org/guides/

## What can we do with the generated SBOM?

Dependency-Track: https://docs.dependencytrack.org/.

*Dependency-Track monitors component usage across all versions of every application in its portfolio in order to proactively identify risk across an organization. The platform has an API-first design and is ideal for use in CI/CD environments.*

- *Tracks component usage across every application in an organizations portfolio*
- *Quickly identify what is affected, and where*
- *Identifies multiple forms of risk including*
  - Components with known vulnerabilities
  - Out-of-date components
  - Modified components
  - License risk



## Alternatives/extensions for dependency/vulnerability management
- Code quality analysis tools like SonarQube https://www.sonarsource.com/
- Security scanners like Trivy https://trivy.dev/
- Tools listed in https://owasp.org/www-community/Component_Analysis (Dependabot, Renovate, Snyk, ...)
   