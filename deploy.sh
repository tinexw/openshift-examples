./gradlew build
oc new-project path-example
cat Dockerfile | oc new-build -D - --name path-example
cd build/libs
oc start-build path-example --from-dir . --follow
oc new-app path-example
oc expose svc/path-example --path='/greeting/'