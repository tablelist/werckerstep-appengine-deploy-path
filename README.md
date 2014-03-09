# AppEngine Deploy Path

A [Wercker](http://wercker.com/) step that deploys a specified directory to the [Google AppEngine](https://appengine.google.com).

You may want to deploy only your *src* or *build* directory instead of all your files including tests and other files not needed in a release.

[![wercker status](https://app.wercker.com/status/95c0eca20545112757ba1b5c7925abfd/s/ "wercker status")](https://app.wercker.com/project/bykey/95c0eca20545112757ba1b5c7925abfd)

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

**Note**: The app.yaml has to be inside the `srcpath` directory.