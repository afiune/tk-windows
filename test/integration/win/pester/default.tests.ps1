
function isDirectory($thing) {
  Test-Path $thing -pathType container
}

function isFile($thing) {
  Test-Path $thing -pathType leaf
}

describe "recipe[tk_windows:default]" {
  it "should create sandwidch directory" {
    $result = isDirectory "/sandwich"
    $result | Should Be $true
  }

  it "should create index page" {
    $result = isFile "/inetpub/wwwroot/index.html"
    $result | Should Be $true
  }
}