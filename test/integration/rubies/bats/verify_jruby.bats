#!/usr/bin/env bats

rubie="jruby"

load _common

@test "RVM $rubie can use nokogiri with openssl" {
  run rvm $rubie do gem install jruby-openssl --no-document
  [ $status -eq 0 ]

  run_nokogiri_openssl_test $rubie
}
