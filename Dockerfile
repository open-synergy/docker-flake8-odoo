FROM alpine/flake8

WORKDIR /code

ADD https://raw.githubusercontent.com/OCA/maintainer-quality-tools/master/travis/cfg/travis_run_flake8.cfg /

ENTRYPOINT ["flake8", "--config=../travis_run_flake8.cfg"]

CMD ["--help"]
