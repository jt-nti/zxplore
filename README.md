# zxplore

Just trying out [IBM Z Xplore](https://www.ibm.com/z/resources/zxplore)

## Tips

After reopening in the dev container, adding your Z Xplore user to the zowe config makes things marginally less annoying. (Still looking for a good solution to secure credentials in a dev container!)

```
zowe config set "profiles.global_base.properties.user" "Znnnnn" --global-config
```
