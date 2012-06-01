Status Report
=============

Overview
--------

Compiles completed Remember the Milk tasks and git commits into a status report.

Setup
-----

* Install ruby dependencies

``` bash
   bundle
```
* Get RTM keys from [https://www.rememberthemilk.com/services/api/keys.rtm](https://www.rememberthemilk.com/services/api/keys.rtm)
* Rename settings.yml.sample to settings.yml
* Add values to settings.yml

Usage
-----
``` bash
  ./status_report.rb
```

Options
-------

Run report on last week's tasks

```bash
  ./status_report.rb --last-week
```

Advanced Usage
--------------

Pipe output to vim

``` bash
   ./status_report | vim -
```

Copy to OSX pasteboard

``` bash
   ./status_report | pbcopy
```

Output
------

``` bash
Report - 2012-05-28 to 2012-06-03
--------------------------------------------------------------------------------
This Week

project_a - Finished a task
project_b - Worked on this thing
project_c - Failed miserably on this task

Next Week
```
