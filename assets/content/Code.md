<h3> Doing terrible things to R so that other researchers don't have to </h3>
I spend kind of a lot of time programming, both in support of my research and to give back to the ecosystem I depend on. My work stack is Java, Hadoop and Hive, with bits of Python or AWK on occasion; my recreational-and-also-work stack is a mix of R and C++, with C when I absolutely can't avoid non-reference pointers.

The "giving back to the ecosystem" consists of building useful R packages covering a variety of subjects. These include:

<h4> Access log parsing and data extraction </h4>
There's a lot of focus on R as a language for, say, biostatistics or financial modelling, and it's very good at those things - but there are a lot of researchers, particularly in web-based industries, that are working with direct access log data (I'm one of them). I wrote a series of tools to allow a researcher to read in, parse and normalise, and finally calculate common metrics over, web access logs.

This starts with [webtools](https://github.com/Ironholds/webtools), a package for reading files that follow common access log formats that, thanks to its dependencies, is 10-15 times faster than an equivalent task in base R. It also contains functions to normalise IPs, resolve x\_forwarded\_for fields. and decode URLs in a vectorised fashion.

For more dedicated URL handling, [urltools](https://github.com/Ironholds/urltools) (see the pattern?) contains vectorised decoders, 
encoders and parsers for URLs, including [lubridate](https://github.com/hadley/lubridate)-like syntax to allow you to modify specific parts of a URL, such as the host or scheme.

And if you decide that you want to take this data and use it to calculate, say, information about user sessions, you can use [reconstructr](https://github.com/Ironholds/reconstructr) - a generalised package for time-based session reconstruction approaches.

All of the above have an R frontend and a C++ backend, allowing for extremely speedy computations that are still user-friendly.

<h4> API clients </h4>

I've written, am writing and have contributed to a large number of API clients - some useful, some not. In 'written' are API client
packages for [MediaWiki](https://github.com/Ironholds/WikipediR), [Wikidata](https://github.com/Ironholds/WikidataR), [The Setup](https://github.com/Ironholds/zebr) and the [Star Wars API](https://github.com/Ironholds/rwars) - so you can stop looking for Alderaan data in all the wrong places.

"writing" includes a client package for [Google Drive](https://github.com/Ironholds/driver), and "contributed to" includes [rsunlight](https://github.com/rOpenGov/rsunlight), [taxize](https://github.com/ropensci/taxize) and the underlying [httr](https://github.com/hadley/httr/) and [rvest](https://github.com/hadley/rvest) packages.

<h4> Miscellanea </h4>

Contributions that don't fit into the categories above include [openssl](http://cran.r-project.org/web/packages/openssl/index.html), which provides tested cryptography to R users, an [IETF RfC webscraper](https://github.com/Ironholds/rfc), and a [geolocation client library](https://github.com/Ironholds/rgeoip). I was also a lead in the [ua-parser](https://github.com/ua-parser/uap-core) family of open source user agent parsers, implementing the R version and maintaining the core definition.
