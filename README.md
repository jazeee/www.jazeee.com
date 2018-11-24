www.jazeee.com
==============

Hosted via Github Pages. See https://github.com/jazeee/jazeee.github.io

Notes:

* TODO: Add build option to not include livereload, otherwise, manually remove livereload from index.html
* Workaround: All js files have no extension. Github pages does not serve js files to non SSL sites.

### To test/build
```
npm install
node_modules/.bin/gulp
```

This builds and serves to http://localhost:3269 with livereload.
The build directory contains the build. Delete livereload from index.html and deploy.
