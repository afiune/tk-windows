
@test "httpd servise is up and running" {
  run service httpd status
  [ "$status" -eq 0 ]
}

@test "Check we have bacon" {
  run grep "Hello world" /etc/httpd/index.html
  [ "$status" -eq 0 ]
}
