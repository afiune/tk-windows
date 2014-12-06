tk-windows Cookbook
===================
Simple Test Cookbook to validate test-kitchen functionality on WindowsGuest [WinRM/PoSH]

Available drivers to test:
* kitchen-vagrant
* kitchen-ec2

Requirements
------------
- `test-kitchen v1.3.0` - tk-windows needs WinRM comunication to spinup Windows VM's. [https://github.com/afiune/test-kitchen.git]
- `kitchen-vagrant v0.16.0` - tk-windows needs VagrantWindows implementation. [https://github.com/afiune/kitchen-vagrant.git]
- `kitchen-ec2 v0.9.0` - tk-windows needs Ec2Windows implementation. [https://github.com/afiune/kitchen-ec2.git]

Test-kitchen Testing Directory Structure
------------
`````
[COOKBOOK]
 |
 +-- test
     |
     +-- integration
         |
         +-- [SUIT_NAME]
              |
              +-- [BUSSER_PLUGIN]
`````
tk-windows Test Directory Structure
------------
`````
 COOKBOOK
 |
 +-- recipes
 +-- ...
 +-- test
     |
     +-- integration
         |
         +-- nix
             |
             +-- bats 
         +-- win 
             |
             +-- serverspec 
             +-- pester 
`````
Testing Vagrant driver: kitchen-vagrant
------------
The vagrant driver is the default test. There is no need to modify anything. Just Run & Enjoy It! 

Testing EC2 driver: kitchen-ec2
------------
In order to test the EC2 driver you have to use the file `.kitchen.yml.ec2` instead of the `.kitchen.yml` file that will is the default. [kitchen-vagrant]

Usage
-----
1. bundle install 
2. bundle exec kitchen test

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Salim Afiune <afiune@getchef.com>
