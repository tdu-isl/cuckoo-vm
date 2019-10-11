#!/bin/sh
ESC="\e["
ESCEND=m
COLOR_OFF=${ESC}${ESCEND}

INFOMATION_COLOR=34
SUCCESS_COLOR=32
WARNING_COLOR=33
ERROR_COLOR=31

color() {
    col_code=$1
    msg=$2
    msg_prefix=$3
    msg_suffix=$4

    echo -en "${ESC}${col_code};1${ESCEND}"
    echo "${msg_prefix} ${msg} ${msg_suffix}"
    echo -en "${COLOR_OFF}"
}

infomation() {
    msg=$1
    color ${INFOMATION_COLOR} ${msg} "[+]" ""
}

success() {
    msg=$1
    color ${SUCCESS_COLOR} ${msg} "[*]" ""
}

warning() {
    msg=$1
    color ${WARNING_COLOR} ${msg} "[-]" ""
}

error() {
    msg=$1
    color ${ERROR_COLOR} ${msg} "[!]" ""
}
