# Support/Debugging info for File system sharing (osxfs) issues

This info includes an A/B test to demonstrate same simple Rails 4 app used for coding interviews.

* One image created will include the entire app, bundled Gems and SQLite DB included - Test A
* One image is same app but loads the app via mount, running CMD will bundle, load schema and run perf test.

## A version-controlled repository so any changes/improvements to the test case can be easily tracked.

https://github.com/PrimeRevenue/derailed/tree/docker-mounts

## A Dockerfile which constructs the exact image to run

`export DOCKER_REPO=<private or public repo>`

https://github.com/PrimeRevenue/derailed/blob/docker-mounts/Dockerfile
https://github.com/PrimeRevenue/derailed/blob/docker-mounts/Dockerfile.dev

#### Build full app container - Test A
`docker build -t $DOCKER_REPO/derailed .`

#### Build base image for mounting - Test B
`docker build -t $DOCKER_REPO/derailed-dev -f Dockerfile.dev .`


## A command-line invocation of how to start the container (includes a baseline performance test)

All of the following should be addressed here:

"A straight-forward way to measure the performance of the use case"

"A clear explanation (README) of how to run the test case" - this file.

Test A:

`docker run --rm -it $DOCKER_REPO/derailed /bin/bash -l -c "bundle install && time bundle exec rails r 'Rails.env'"`

Test B:

`docker run --rm -it -w /derailed -v $(pwd):/derailed $DOCKER_REPO/derailed-dev /bin/bash -l -c "export BUNDLE_PATH=vendor/bundle-docker && bundle exec rake db:schema:load && time bundle exec rails r 'Rails.env'"`


