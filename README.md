# ❄️ Miyuki / みゆき

![Open Collective backers and sponsors](https://img.shields.io/opencollective/all/mumuki?color=%23ff5b81)

> Stateless, **mi**nimalistic mum**uki** laboratory

https://user-images.githubusercontent.com/677436/230702139-114d099f-8ab7-4d71-be12-f4f1d52388ec.mp4

## About

This is a fork of mumuki-laboratory that:

  * Freezes dependencies versions - miyuki is an [app, not an engine](https://guides.rubyonrails.org/engines.html)
  * Removes a lot of boilerplate and dark features
  * Updates ruby and rails to 3.2 and 7, respectively
  * Makes incognito mode work - current implementation had a lot of bugs and missing parts
  * Uses `Sqlite3` instead of `PostgreSQL`
  * Makes deployment easier
  * [Provides a desktop installer](./packager/README.md)


## Principles

This project is both [free](https://www.gnu.org/philosophy/free-sw.html), [open](https://opensource.org/osd) software, but also [ethical software](https://ethicalsource.dev/what-we-believe/).

We believe that the context in which free, open source projects are created matters, e.g. software created in the global south, by racialized communities or under siege or genocide is intrinsically distinct to the software built under more privileged conditions.

For this reason, giving attribution to the authors is sometimes not enough - in order to properly credit them, we need to also tell not only their names, but also give them the opportunity to tell who they are, why have them created and which are the goals and dreams that drive their software development process. In other words, we believe it is essential to give a voice to the software creators and ensure this voice is not silenced.

Likewise, we think that users have the right to know about that context, goals and principles, in order to better decide if they are willing to use, sponsor or contribute to the software or not. This is an essential aspect of being accountable and give transparency to the overall software development process.

In order to better express and enforce those beliefs, we have:

 * written and published our own ethical principles, which describe the context and ethical viewpoints of the authors. Please read them [here](./PRINCIPLES).
 * tailored an AGPL-V3-inspired license (called _AGPL V3 LICENSE WITH ETHICAL PRINCIPLES NOTICE_) that enforces that such principles are linked to it, available to users and
  distributed alongside verbatim and modified copies of this software. It also offers mechanisms for new forks to extending this mechanism. Please read it [here](./LICENSE).


## Local installation

### Install environment

```
rbenv install
bundle install
```

### Start the server

This will start miyuki server only - required runners need to be started following by their own.

```bash
rails s
```

## Docker Installation

### Prepare database

In order to prepare database, follow the same instructions that with local installation.

### Start the server from docker

Again, this will start miyuki server **only**:

```
docker run -it --rm \
           -p 3000:3000 \
           -v ./db/development.sqlite3:/var/www/miyuki/db/production.sqlite3 \
           flbulgarelli/miyuki-server
```

## Prebuilt distributions

Go to any of the `dists/` subfolders and follow instructions.