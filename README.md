# pass copycat

A [password store](https://www.passwordstore.org/) extension to *copy* the first line of a password record, and *cat* the rest. Inspired by [pass-extension-tail](https://www.github.com/palortoff/pass-extension-tail).

## Description

It is a common convention to store usernames, URLs, security questions, or other metadata in a single multiline password record. `pass -c` copies the first line of a multiline password record, but will not display additional metadata. This is a minor annoyance for those who may use multiple email addresses or usernames, and may need a reminder of their credentials.

pass copycat will copy the first line of a password store file, and print the remaining lines to the console. It does so in a single call to GPG, so that users with password-protected or hardware token-based GPG keys will only have to unlock their key once.

## Usage

`pass cc <file>` to copycat the password record

## Install

1. Clone the repository: `git clone https://github.com/dacruz21/pass-copycat.git`

1. Run the install script to install the extension to `/usr/lib/password-store/extensions`: `make install`

## Contributions

Always welcome! :)

