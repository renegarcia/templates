#!/bin/bash

help () {
  echo "USSAGE: template.sh <template> <new-project-name>"
  echo "<template> can be:"
  echo "    math-project"

}

error_nonempty_dir () {
  echo "Error: New project directory exists in filesystem"
  help
}

template="$1"
location="$2"

test -z "$template" && help && exit 1
test -a "$location" && error_nonempty_dir && exit 2

TEMPLATES_LOC=$HOME/templates

installer=$TEMPLATES_LOC/$template/install.sh
#echo $location
exec $installer $location

