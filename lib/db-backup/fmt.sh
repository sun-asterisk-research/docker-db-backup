#!/bin/bash

function msg() {
    echo [$(date +"%Y-%m-%d %H:%M:%S")]["$1"] "$2"
}

function info() {
    msg "INFO" "$1"
}

function warn() {
    msg "WARN" "$1"
}

function error() {
    msg "ERROR" "$1" >&2
}

function fatal() {
    msg "FATAL" "$1" >&2
    exit 1
}
