#!/usr/bin/env bash
openapi-generator generate -g swift5 -c meta/generator-config.json -i meta/openapi.json --skip-validate-spec