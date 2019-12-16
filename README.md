# pass-keys

Password Store extension Keys

**A [pass] extension for syncing your GPG keys along with your passwords across your devices**

## Description

`pass keys` is a password store extension that keeps all the public keys used to encrypt your passwords in the same git repo as your passwords. 

## Usage
```
pass keys sync

imports all the missing public keys into your GPG and commits any missing public keys into your [pass] GIT repo
```

## Installation
```
git clone https://github.com/slim/pass-keys.git
mkdir -p ~/.password-store/.extensions
cp pass-keys/keys.bash ~/.password-store/.extensions
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
echo "export PASSWORD_STORE_ENABLE_EXTENSIONS=true" >>~/.profile
```

[pass]: https://www.passwordstore.org/

