# Smashing Boxes App generator
Makes building apps faster and more fun!

## Usage
###Automatic (recommended)
```
echo '-m https://raw.github.com/smashingboxes/sb_app_generator/master/app_generator.rb --skip-bundle' > ~/.railsrc

rails new your_app_name
```

###Manual
```
rails new your_app_name -m https://raw.github.com/smashingboxes/sb_app_generator/master/app_generator.rb --skip-bundle
```

## Troubleshoot

### Skip the automatic script
in case of trouble
```
rails new your_app_name --no-rc
```

### Install Posrgres
The generator only supports Postgres right now. Here is the [simplest way to install postgres](http://postgresapp.com/).

### SSL error
Make sure you have the latest ruby >= 1.9.3p362

#### curl-ca-bundle
Installing `curl-ca-bundle` worked for some users.

```
brew install curl-ca-bundle
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
```

## Project Readme
[Deploy instructions](https://github.com/smashingboxes/sb_app_generator/blob/master/templates/README.md)
