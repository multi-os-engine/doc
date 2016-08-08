#!/bin/sh

#
# BUILD moe doc
#

qualifier="$1"
build_number="$2"
target_repo="$3"
repo_user="$4"
repo_pass="$5"

export MOE_MAVEN_ADDR=$target_repo

export BUILD_NUMBER=$build_number
export PUBLISH_TARGET_REPO_ADDR=$target_repo
export PUBLISH_TARGET_REPO_USER=$repo_user
export PUBLISH_TARGET_REPO_PASS=$repo_pass

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

./gradlew refreshNatJReference

make html
