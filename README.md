# minumuki
> Stateless, minimalistic mumuki laboratory

This is a fork of mumuki-laboratory that:

  * Removes a lot of boilerplate and dark features
  * Updates ruby and rails to 3.2 and 7, respectively
  * Makes incognito mode work - current implementation had a lot of bugs and missing parts
  * Makes deployment easier

### Create the database

```
rails db:create
```

### Start the server

```
rails s
```

### Pending

- Add installation instructions
- Remove unnecessary gems / tables
- Add dockerfile and docker-compose
- Add prebuilt content dumps
- Create specific docker tags for each prototypical content
- Make inspections translations work - probably some mulang config is missing
