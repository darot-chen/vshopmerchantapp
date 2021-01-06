# VTenh
The next generation of ecommerce for customers and vendors. This project was created with flutter cli

```bash
> flutter create --org com.vtenh.app.merchant vtenhappmerchant
```


## App Icon
VTenh uses **flutter_launcher_icons** with the following config:

```yaml
dev_dependencies:
  flutter_launcher_icons: "^0.8.0"

flutter_icons:
  android: "launcher_icon"
  ios: true
  image_path: "assets/icon/icon.png"
```

If you want to customize the icon, replace it here **assets/icon/icon.png**.

To generate the icon for every update:

```bash
> flutter pub run flutter_launcher_icons:main
```

## Configuration and Deployment
In VTenh, we assumes every .example file must be replicated with the one without .example, for instance

### Replicate example files

```
main_production.dart.example -> main_production.dart
constants/api_constant.dart.example -> constants/api_constant.dart

```
For every newly created file, you must replace the value with your own configuration.

### Code generation with JSON Serialization
VTenh uses Json Serializable [ https://flutter.dev/docs/development/data-and-backend/json#code-generation ]  package build tool to generate model from Json to Class object.
In case you want to add more fields model or even change the model data type, you need to run the command:

```
flutter pub run build_runner build --delete-conflicting-outputs
```

VTenh dev team uses the following alias to minimize the typing and to easily memorize

```shell
alias "ftest"="flutter test"
alias "fget"="fultter pub get"
alias "fgen"="flutter pub run build_runner build"
```
You might create a custom shell file, for example in macosx, create a file called .my_awesome_alias in your home directory with the above content and then import it to your bash profile

```shell
# Put it this at the end of ~/.zshrc for macosx >= Catalina

# import your custom command file
source ~/.my_awesome_alias

```


### Android
VTenh uses **https://flutter.dev/docs/deployment/android** guide to link keystore from the build machine. Rename **android/key.properties.example** to **android/key.properties.example** and replace your key pasword and location value in the file.


## Testing
VTenh uses agile development process. TDD is important part in our agile process. To be able to PR you must make sure you have your business logic tested. To run the test use the built in flutter command:

```
flutter test
```
