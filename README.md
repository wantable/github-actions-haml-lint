# Github Action: HAML Linting

- [Github Action:  HAML Linting](#github-action-haml-lint)
  - [How it works](#how-it-works)
  - [Instructions](#instructions)

Lint your Ruby code in parallel to your builds.


## How it works

- Ruby 3.1.4


![](screenshots/annotations.png)


## Instructions

In order to use this action you will need to specify the `$GITHUB_TOKEN` alongside the check:


```yaml
# Worflow example
name: CI
on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:

    - uses: actions/checkout@v1

    - name: Rubocop checks
        uses: wantable/github-actions-haml-lint@0.0.1
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
