#!/bin/bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#

#----- Import Functions -----#
dir="$(dirname "$0")"

. $dir/functions/check
. $dir/functions/cleanup
. $dir/functions/configure
. $dir/functions/development
. $dir/functions/favourites
. $dir/functions/thirdparty
. $dir/functions/update
. $dir/functions/utilities

#----- Fancy Messages -----#
show_error(){
echo -e "\033[0;31m$@\033[0m" 1>&2
}
show_info(){
echo -e "\033[0;37m$@\033[0m"
}
show_warning(){
echo -e "\033[0;33m$@\033[0m"
}
show_question(){
echo -e "\033[0;34m$@\033[0m"
}
show_success(){
echo -e "\033[0;32m$@\033[0m"
}
show_header(){
echo -e "\033[1;36m$@\033[0m"
}
show_listitem(){
echo -e "\033[0;37m$@\033[0m"
}

function autorun {
    update
    check
    utilities
    favourites
    development
    thirdparty
    cleanup
}

#RUN
autorun
#END OF SCRIPT
