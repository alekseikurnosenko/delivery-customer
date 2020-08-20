rm -rf openapi
openapi-generator generate -i http://enigmatic-garden-23553.herokuapp.com/v3/api-docs -g dart-dio -o openapi --global-property supportingFiles,apis,apiDocs=false,apiTests=false,models,modelDocs=false,modelTests=false
cd openapi
flutter pub get
flutter pub run build_runner build