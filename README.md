---
layout: home
---

# A Static Container Registry

**under development**

Welcome to registry-org, a static container registry intended for
a GitHub organization! Here we generate a static registry to serve
containers that are built in separate repositories across an organization. If
you are looking for a single static registry to build and deploy containers,
see the original [singularityhub/registry](https://www.github.com/singularityhub/registry) 
repository. See the central documentation for 
[all static registries here](https://www.github.com/singularityhub/registry/wiki)

# Why do we need a static registry?

It's not always affordable to host an entire registry server, meaning somewhere
to run a Docker Registry that hosts an API plus blobs. It's much more realistic
today (or desired) to want to have some API to serve metadata (and there is no reason
this couldn't be statically hosted) and then a storage of choice such as S3, 
Google Storage, etc. This would make all kinds of build and deploy pipelines possible,
sort of like a "Choose your own adventure" for registries. For example:

 1. Maintain registry API statically on Github pages
 2. Build, check, update containers with Github Actions, TravisCI, CircleCI, or other continuous integration service *from other individual repos*
 3. On successful CI (tests pass hooray!) the other repositories open a pull request here to update the registry (static content).
 4. The registry tests the contribution, meaning existence of the image.

# Getting Started

Following the links below to read the documentation on the repository wiki to learn more.

 - [Documentation](https://github.com/singularityhub/registry/wiki) home on the respository wiki.

Basically, the registry here only accepts pull request for new folder hierarchies ( container
namespaces) with metadata files. The repositories creating the pull requests should
use the [templates provided](_templates) to generate the additional files. Once this is 
developed, there should be template repos that will allow you to easily do this.

## Support

Please [open an issue](https://www.github.com/singularityhub/registry-org/) if you
have any questions, preguntas, dilemas, asuntos... 

## License

This code is licensed under the Affero GPL, version 3.0 or later [LICENSE](LICENSE). 
The power of open source compels you!!
