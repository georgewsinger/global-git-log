#! /bin/bash

DEFAULT_DIR=$HOME
LOC=${2-$DEFAULT_DIR}

function generate_git_locations() {
  find $(realpath $LOC) -name '.git' -printf '%h\n'
}

function prune_git_locations() {
	if [ -z $1 ]
	then
		TIME="12am"
	else
		TIME="$1"
	fi

	while read line
	do
		YUP=$(cd "$line" && git log --pretty=format:"%cr %s" --since="$TIME" 2> /dev/null | grep ago)
		if [ ! -z "$YUP" ] 
		then
			echo "$line"
		fi
	done
}

function generate_git_logs_from_locations() {
	if [ -z $1 ]
	then
		TIME="12am"
	else
		TIME="$1"
	fi

	while read line
	do 
    cd $line
	echo -e "\n$(basename $PWD)" && git --no-pager log --pretty=format:"%Cred%h - %Creset%ar : %Cgreen%s%Creset %Cred%d%Creset" --since="$TIME" && echo -e "\n"
	done
}

function ggl() {
 	generate_git_locations | prune_git_locations $1 | generate_git_logs_from_locations $1
}

ggl $1 $2
