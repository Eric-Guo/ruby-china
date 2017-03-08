Homeland For Tensorflow-China
--------

## Running sidekiq

```bash
bundle exec sidekiq -C config/sidekiq.yml RAILS_ENV=development
```

## Export the DB

```bash
pg_dump -d tensorflow_china_prod -f tensorflow_china_prod_db.psql
zip tensorflow_china_prod_db.zip tensorflow_china_prod_db.psql
```

## Import the staging DB

```bash
scp deploy@tensorflow-china.org:tensorflow_china_prod_db.zip .
unzip tensorflow_china_prod_db.zip
sed -i -- 's/deploy/guochunzhong/g' tensorflow_china_prod_db.psql
psql -d postgres
DROP DATABASE tensorflow_china_dev;
CREATE DATABASE tensorflow_china_dev WITH ENCODING='UTF8' OWNER='guochunzhong';
\q
psql -d tensorflow_china_dev -f tensorflow_china_prod_db.psql
```

## Delete elasticsearch index

```bash
curl -XDELETE 'localhost:9200/tfchina_users?pretty&pretty'
curl -XDELETE 'localhost:9200/tfchina_topics?pretty&pretty'
curl -XDELETE 'localhost:9200/tfchina_pages?pretty&pretty'
curl -XGET 'localhost:9200/_cat/indices?v&pretty' 
```

## Rebuild elasticsearch index

```bash
rake environment elasticsearch:import:model CLASS=Page FORCE=y RAILS_ENV=production
rake environment elasticsearch:import:model CLASS=Topic FORCE=y RAILS_ENV=production
rake environment elasticsearch:import:model CLASS=User FORCE=y RAILS_ENV=production
```

![](https://gethomeland.com/images/text-logo.svg)

Open source discussion website.

开源的论坛／社区网站系统，基于 [Ruby China](https://ruby-china.org) 发展而来。

[![Build Status](https://travis-ci.org/ruby-china/homeland.svg?branch=master)](https://travis-ci.org/ruby-china/homeland) [![codecov.io](https://codecov.io/github/ruby-china/homeland/coverage.svg?branch=master)](https://codecov.io/github/ruby-china/homeland?branch=master)
[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fruby-china%2Fhomeland.svg?type=shield)](https://app.fossa.io/projects/git%2Bgithub.com%2Fruby-china%2Fhomeland?ref=badge_shield)

## Deployment

Please visit https://gethomeland.com get more documents.

## Release Notes

Please visit [Releases](https://github.com/ruby-china/homeland/releases) page.

## Contribute Guide

Please read this document: [CONTRIBUTE GUIDE](https://github.com/ruby-china/homeland/blob/master/CONTRIBUTE.md)

## Thanks

* [Contributors](https://github.com/ruby-china/homeland/contributors)
* [Twitter Bootstrap](https://twitter.github.com/bootstrap)
* [Font Awesome](http://fortawesome.github.io/Font-Awesome/icons/)
* Forked from [Homeland Project](https://github.com/huacnlee/homeland)
* Theme from [Mediom](https://github.com/huacnlee/mediom)

## Sites used Homeland

https://gethomeland.com/expo

## License

Copyright (c) 2011-2017 Ruby China

Released under the MIT license:

* [www.opensource.org/licenses/MIT](http://www.opensource.org/licenses/MIT)

Emojis under the CC-BY 4.0 license from [Twitter/Twemoji][twemoji]:

* https://github.com/twitter/twemoji#license

[twemoji]: https://github.com/twitter/twemoji


[![FOSSA Status](https://app.fossa.io/api/projects/git%2Bgithub.com%2Fruby-china%2Fhomeland.svg?type=large)](https://app.fossa.io/projects/git%2Bgithub.com%2Fruby-china%2Fhomeland?ref=badge_large)