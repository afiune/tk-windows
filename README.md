tk-windows Cookbook
===================
Simple Test Cookbook to validate test-kitchen functionality on WindowsGuest [WinRM/PoSH]

Requirements
------------
- `test-kitchen v1.3.0` - tk-windows needs WinRM comunication to spinup Windows VM's. [https://github.com/afiune/test-kitchen.git]
- `kitchen-vagrant v0.16.0` - tk-windows needs VagrantWindows implementation. [https://github.com/afiune/kitchen-vagrant.git]

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
