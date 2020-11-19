#!/bin/bash

require fmt

function require_env() {
    for var in $@; do
        if [ -z "${!var}" ]; then
            missing="$missing\n- $var"
        fi
    done

    if [[ -n "$missing" ]]; then
        fatal "Missing required environment variables:$missing"
    fi
}

function validate_env_opts() {
    env_name=$1
    value="${!env_name}"
    valid_opts=${@:2}

    for opt in $valid_opts; do
        if [ $value == $opt ]; then
            return 0
        fi
    done

    fatal "Invalid value for $env_name: $value. Supported values are $valid_opts"
}
