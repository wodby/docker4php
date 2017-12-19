# Solr

To spin up a container with Apache Solr search engine uncomment lines with solr service definition in the compose file.  

By default, Solr admin UI can be accessed by [http://solr.php.docker.localhost:8000](http://solr.php.docker.localhost:8000). Solr container has a persistent volume defined in Dockerfile, so your data won't be lost if you stop the container. Solr cores can be found under `/opt/solr/server/solr`.

## Configuration

Configuration is possible via environment variables. See the full list of variables on [GitHub](https://github.com/wodby/solr).