# Jobify

Jobify is Remote Job Recruitment Board for Software Developers. https://limitless-lowlands-18858.herokuapp.com/

**⚠️ Warning:** jobify is in development, many important features are missing, there
are bugs and performance can be bad.

## Getting started

### Requirements

- Ruby version: 2.6.3
- Rails version: 5.2.3
- Postgresql > 9.x
- Npm, Yarn

### Installation

1. Clone your repo

```shell
git clone https://github.com/nursoltan-s/jobify
```

2. Run bundle install

```shell
cd jobify && bundle
```

3. Migrate Database (Used Postgresql default configuration)

```shell
db:setup && rails db:migrate
```

4. Run your app

```shell
rails s
```
