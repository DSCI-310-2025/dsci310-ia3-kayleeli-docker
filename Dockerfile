FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos='https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('cowsay', version='0.8.0', repos='https://cloud.r-project.org')"

# step 5, making at least 1 change, and github action updates again
RUN Rscript -e "remotes::install_version('praise', version='1.0.0', repos='https://cloud.r-project.org')"
