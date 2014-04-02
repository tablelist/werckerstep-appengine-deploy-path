# AppEngine Deploy Path

Forked - appengine-deploy-path

A [Wercker](http://wercker.com/) step that deploys a specified directory to the [Google AppEngine](https://appengine.google.com) using the latest google SDK.

You may want to deploy only your *src* or *build* directory instead of all your files including tests and other files not needed in a release.

[![wercker status](https://app.wercker.com/status/ba851187db650ef9a0e68590865e1183/s/ "wercker status")](https://app.wercker.com/project/bykey/ba851187db650ef9a0e68590865e1183)

## Options
### required

* `email` - The email address of the Google account to use for deployment.
* `password` - The password of the Google account to use for deployment.
* `srcpath` - The path to the directory you want to deploy (for example `./src`).

## Example

    deploy:
        steps:
            - etre0/appengine-deploy-path-update:
                email: $APP_ENGINE_USER
                password: $APP_ENGINE_PASS
                srcpath: ./src

I recommend to use private deployment variables for email and password.

**Note**: The app.yaml has to be inside the `srcpath` directory.
