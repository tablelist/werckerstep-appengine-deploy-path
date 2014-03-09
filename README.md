# AppEngine Deploy Path

A Wercker step that deploys a specified directory to the Google AppEngine.
You may want to deploy only your *src* or *build* directory instead of all your files including tests and other files not needed in a release.

## Options

### required

* `email` - The email address of the Google account to use for deployment.
* `password` - The password of the Google account to use for deployment.
* `srcpath` - The path to the directory you want di deploy (for example `./src`).

## Example

    deploy:
        steps:
            - fbrinker/appengine-deploy-path:
                email: $APP_ENGINE_USER
                password: $APP_ENGINE_PASS
                srcpath: ./src

I recommend to use private deployment variables for email and password.