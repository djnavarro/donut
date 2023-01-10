FROM rocker/r-ver:4.2.2

LABEL org.opencontainers.image.source "https://github.com/djnavarro/donut"
LABEL org.opencontainers.image.authors "Danielle Navarro <djnavarro@protonmail.com>"
LABEL org.opencontainers.image.description DESCRIPTION
LABEL org.opencontainers.image.licenses "MIT"

RUN Rscript -e 'install.packages(c("ggplot2", "scales", "tibble", "dplyr", "plumber", "ggthemes"))'
COPY server.R /home/server.R
EXPOSE 8080
CMD Rscript -e 'plumber::plumb(file="/home/server.R")$run(host="0.0.0.0", port = 8080)'
