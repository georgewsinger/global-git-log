# global-git-log (gg-log)

Global git log shows you all of your git commits across multiple directories over a given interval.

    $ gg-log <time> <directory>

Here, `<time>` abides by any time format that can be supplied to traditional `git log` arguments. Here are some examples:

    $ gg-log 1.day
    $ gg-log 7.am
    $ gg-log 6.hours
    $ gg-log 1.week

If no arguments are supplied, `<time>` defaults to `1.day` and `<directory>` defaults to `~`.

# Video Example

//Asciinema Video to Come

# Requirements

- Unix system (i.e., Linux/Mac)
- Git
