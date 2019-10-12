#!/bin/sh
ESC="\033["
ESCEND=m
COLOR_OFF=${ESC}${ESCEND}

INFOMATION_COLOR=34
SUCCESS_COLOR=32
WARNING_COLOR=33
ERROR_COLOR=31

color() {
    col_code=$1
    msg=${@:4}
    msg_prefix=$2
    msg_suffix=$3

    printf "${ESC}${col_code};1${ESCEND}${msg_prefix} ${msg} ${msg_suffix}${COLOR_OFF}\n"
}

information() {
    msg=$1
    color ${INFOMATION_COLOR} "[+]" "" ${msg}
}

success() {
    msg=$1
    color ${SUCCESS_COLOR} "[*]" "" ${msg}
}

warning() {
    msg=$1
    color ${WARNING_COLOR} "[-]" "" ${msg}
}

error() {
    msg=$1
    color ${ERROR_COLOR} "[!]" "" ${msg}
}
