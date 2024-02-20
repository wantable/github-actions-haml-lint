#!/bin/sh -l

set -e

gem install haml_lint -v 0.57.0

ruby /action/lib/index.rb
