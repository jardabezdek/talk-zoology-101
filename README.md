# :rocket: talk-zoology-101

Code and docs for the following talk: "Zoology 101: pandas, polars, and ducks in the data wilderness"

## :pencil: Authors

- [Jaroslav Bezdek](https://www.github.com/jardabezdek)

## :construction_worker_man: Setup

### :wrench: Local development

In order to create a working environment including [Jupyter notebook](https://jupyter.org/),
[pandas](https://pandas.pydata.org/), [polars](https://pola.rs/), and [duckdb](https://duckdb.org/),
the [docker](https://www.docker.com/) is used. Please, follow the next steps to create a docker
container with Jupyter notebook running inside.

1. Launch the docker daemon.
1. Build the docker image: `docker build -t zoology-101:latest .`
1. Run the docker container: `docker run -p 8888:8888 -v $(pwd):/usr/src/app zoology-101:latest`

## :link: Links

- Conferences and meetups:
  - [PyCon NA 2024 (Windhoek, Namibia)](https://na.pycon.org/)
