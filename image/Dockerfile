FROM rocker/r-ver:4.2.2

RUN Rscript -e 'install.packages(c("ggplot2", "scales", "tibble", "dplyr", "plumber", "ggthemes"))'
COPY server.R /home/server.R
EXPOSE 80
CMD Rscript -e 'plumber::plumb(file="/home/server.R")$run(host="0.0.0.0", port = 80)'
