# nononsenseforum-docker
A dockerization of the NoNonsenseForum app

# Quick Start

docker run -p 80:80 matthewwerny/nononsenseforum

# Advanced use

docker run -p 80:80 -v /some/path/to/your/forum/data:/users matthewwerny/nononsenseforum
