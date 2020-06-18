# CURRENTLY UNDER DEVELOPMENT

# Purpose

To provide an easy way for users to add Docker to their project.

## Prerequisites

- Ruby >= 2.5
- Bridgetown ~> 0.15.0

```bash
bridgetown -v
# => bridgetown 0.15.0 "Overlook"
```

This project requires the new `apply` command introduced in Bridgetown
`0.15.0`

## Usage

### New project

```bash
bridgetown new <newsite> --apply="https://github.com/ParamagicDev/bridgetown-automation-turbolinks"
```

### Existing Project

```bash
[bundle exec] bridgetown apply https://github.com/ParamagicDev/bridgetown-automation-turbolinks
```

## Getting Started

There should be nothing to do on your end, it should "just work"

## Testing the "apply" command locally

Right now there is one big integration test which simply
checks that the files were created for Docker in a new bridgetown project.

In order for the tests to pass, you must first push the branch you're working on and then
wait for Github to update the raw file so the remote automation test will pass

```bash
git clone
https://github.com/ParamagicDev/bridgetown-automation-turbolinks/
cd bridgetown-automation-turbolinks
bundle install
bundle exec rake test
```

### Testing with Docker

```bash
git clone
https://github.com/ParamagicDev/bridgetown-automation-turbolinks
cd bridgetown-automation-turbolinks
docker-compose up --build
```
