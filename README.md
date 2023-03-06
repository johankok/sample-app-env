# sample-app-env

## What does this sample-app do?

* Exposes list of all environment variables at `/`,
* Exposes some basic prometheus metrics at `/metrics`,
* Inceases a prometheus counter when you call `/increase`

## How to get this sample-app?

Container images are available via https://quay.io/repository/johankok/sample-app-env and `podman pull quay.io/johankok/sample-app-env:latest` or via the [helm chart](https://github.com/johankok/charts/).
