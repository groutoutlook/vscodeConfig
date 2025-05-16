shebang := if os() == 'windows' { 'pwsh.exe' } else { '/usr/bin/env pwsh' }
set shell := ["pwsh", "-c"]
set windows-shell := ["pwsh.exe", "-NoLogo", "-Command"]
set dotenv-load := true
# set dotenv-filename	:= ".env"
# set dotenv-required := true
# INFO: if you want to edit the justfile use js -e.

_default:
    @just --list
    
alias b := build
build:
    #nothing here

alias fmt := format
format: 
    git ls | biome format --write
