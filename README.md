# SbomDemoService

Spring Boot 3.3 demo application with the new CycloneDX autoconfiguration
https://spring.io/blog/2024/05/24/sbom-support-in-spring-boot-3-3

## What is SBOM?
Software Bill Of Materials: declares the inventory of software components and dependencies. Analogous to the traditional Bill Of Materials (BOM) in manufacturing that lists all the materials/components/parts used to create an end product.

multiple standards:
- CycloneDx https://cyclonedx.org/capabilities/sbom/
- SPDX: https://spdx.dev/about/overview/
- Syft: https://github.com/anchore/syft

## Why do we need SBOM?
Keeping track of vulnerabilities and thus of your dependencies is as important as ever.

### Legislation

#### Europe
- Network and Information Security directive 2 (NIS2)
  - SCOPE:  critical sectors listed in NIS2 (banking, energy, transport, financial, ict, ...)
> *"...Risk analysis and information systems security policies..."* - https://ccb.belgium.be/en/document/nis-2-directive-what-does-it-mean-my-organization
- Digital Operational Resilience Act (DORA)
  - SCOPE: financial sector
> *"...Principles and requirements on ICT risk management framework..."* - https://www.eiopa.europa.eu/digital-operational-resilience-act-dora_en
- Cyber Resilience Act (CRA) 
  - SCOPE: hardware products with connected features, software sold on standalone basis
> *"...obligations throughout the whole lifecycle of the connected product, especially as regards vulnerability management..."* - https://ccb.belgium.be/en/cyber-resilience-act-cra

#### USA
- US Executive Order 14028
> *"...(vii)   providing a purchaser a Software Bill of Materials (SBOM) for each product directly or by publishing it on a public website..."* - https://www.whitehouse.gov/briefing-room/presidential-actions/2021/05/12/executive-order-on-improving-the-nations-cybersecurity/

### Managing critical vulnerabilities
- Log4J vulnerability 2022 
  - https://www.cisa.gov/news-events/news/apache-log4j-vulnerability-guidance

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

> *Dependency-Track monitors component usage across all versions of every application in its portfolio in order to proactively identify risk across an organization. The platform has an API-first design and is ideal for use in CI/CD environments.*
> - *Tracks component usage across every application in an organizations portfolio*
> - *Quickly identify what is affected, and where*
> - *Identifies multiple forms of risk including*
>  - Components with known vulnerabilities
>  - Out-of-date components
>  - Modified components
>  - License risk

Uses Apache 2.0 license https://github.com/DependencyTrack/dependency-track/blob/master/LICENSE.txt, so free for commercial use


## Alternatives/extensions for dependency/vulnerability management
- Code quality analysis tools like SonarQube https://www.sonarsource.com/
- Security scanners like Trivy https://trivy.dev/
- Tools listed in https://owasp.org/www-community/Component_Analysis (Dependabot, Renovate, Snyk, ...)
   