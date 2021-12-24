#!/bin/bash

user_file="$(eval echo ${1})"

if [[ "$user_file" = /* ]]
then
  config_file="$user_file"
else
  cwd=$(dirname $0)
  config_file="${cwd}/${user_file}"
fi

json=$(cat ${config_file})

if [ $# -eq 1 ]; then
  echo $json | jq -cr '.[] | "\(.name)|\(.command)|\(.icon)"' |
  while IFS="|" read -r name command icon url
  do
    if [[ $name == "null" ]]; then
      continue
    fi
    if [[ $icon == "null" ]]; then
      icon="system-run"
    fi
    echo -en "${name}\0icon\x1f${icon}\n"
  done
  exit 1
fi

if [ $# -eq 2 ]; then

  selected=$2
  task=$(echo $json | jq ".[] | select(.name == \"$selected\")")

  if [[ $task == "" ]]; then
    exit 1
  fi

  command=$(echo $task | jq -j ".command")

  url=$(echo $task | jq -j ".url")

  if [[ $command == "null" ]]; then
    command=$(echo $task | jq -j ".name")
  fi

  if [[ $url != "null" ]]; then
    coproc bash -c "brave-browser --new-tab $url"
  else
    coproc bash -c "$command"
  fi
  exit

fi
