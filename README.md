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
  - [PyCon IE 2024 (Dublin, Ireland)](https://python.ie/pycon-2024/)
    - [Talk Recording](https://www.youtube.com/watch?v=ISuuiyP4WCs)
- Resources:
  - pandas
    - [An In-Depth Exploration of Pandas: Advantages, Disadvantages, and Alternatives for Large-Scale Data Processing](https://medium.com/@sajidkhan.sjic/an-in-depth-exploration-of-pandas-advantages-disadvantages-and-alternatives-for-large-scale-data-cedf0b3d04aa)
    - [Documentation](https://pandas.pydata.org/docs/)
  - polars
    - [Python Polars: A Lightning-Fast DataFrame Library](https://realpython.com/polars-python/)
    - [Documentation](https://docs.pola.rs/py-polars/html/reference/)
  - duckdb
    - [What is DuckDB?](https://glossary.airbyte.com/term/duckdb/)
    - [DuckDB — What’s the Hype About?](https://betterprogramming.pub/duckdb-whats-the-hype-about-5d46aaa73196)
    - [DuckDB and the next frontier of OLAP databases](https://kojo.blog/duckdb/)
    - [What's in duckdb for python devs? duckdb vs pandas vd polars](https://motherduck.com/blog/duckdb-versus-pandas-versus-polars/)
    - [Why use duckdb for analytics?](https://motherduck.com/blog/six-reasons-duckdb-slaps/)
    - [Documentation](https://duckdb.org/docs/)
