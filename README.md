
# Carthage+ 

Carthage+ is the extended version of [Carthage](https://github.com/Carthage/Carthage) that gives you a possibility to operate on multiple Cartfiles in one repository to better manage which dependencies are fetched and to define particular schemes that should be build instead of building them all.

- [Compatibility with Carthage](#compatibility-with-carthage)
- [Installing Carthage+](#installing-carthage)
- [Using Carthage+](#using-carthage%2B)
- [License](#license)

## Compatibility with Carthage

Carthage+ is capable of performing all operations the the regular Carthage does, so you can use Carthage+ even if you're not using its extra features.

## Installing Carthage+

- Installing globally on a machine. This will add the `carthage+` to `/usr/local/bin`.
    ```
    git clone git@git.nonprod.williamhill.plc:pSzymanski/carthage.git
    make -C "carthage" install
    rm -Rf carthage
    carthage+ help
    ```
- Installing locally. This will install `carthage+` in the `bin` folder in the working directory.
    ```
    git clone git@git.nonprod.williamhill.plc:pSzymanski/carthage.git
    make -C "carthage" prefix_install PREFIX=".."
    rm -Rf carthage
    bin/carthage+ help
    ```

## Using Carthage+

1. All entries in the `Cartfile` can be extended with some extra options
```
git "git@git.com:user/AwesomeFramework.git" cartfile:"CartfileLite" schemes:"AwesomeFrameworkLite" ~> 1.0.0
```
The Cartfile entry above will do the following:
- Carthage+ will look for `CartfileLite` file to get the information about `AwesomeFramework` dependencies.
- Carthage+ will build only `AwesomeFrameworkLite` scheme ignoring other shared schemes in the `AwesomeFramework` project.

2. Providing cartfile through the command line
```
carthage+ bootstrap --cartfile CartfileLite
```
## License

Carthage+ was created as a fork from [Carthage](https://github.com/Carthage/Carthage)

Carthage+ is released under the [MIT License](LICENSE.md).


