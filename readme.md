# labrat

## Why

Being cautious by nature, I want a way to test the behavior of my scripts, service, puppet code, etc... in a safe way. Being impatient, I don't want to take the time needed to properly build a VM only to test whether the script works as intended. By the time I build a prod clone, I should be fairly certain that my code is functionally sounds.

As a result, I decided to leverage Vagrant's strengths to quickly provision and stand up test environments for various Linux distributions. The idea is that to pick a box to stand up in the Vagrantfile, make sure the puppet code in the environment manifest provisions the vm with the settings needed, run `vagrant up` in the labrat root directory, and develop the script in the shared folder. End of story.

This project isn't meant to be anything more than a quick way to bring up a Linux machine for me to try things out from a systems engineering angle. There are better, cleaner ways to use Vagrant for application development and I will try to list some at some point in the future. Labrat's use case, at least at the start of it, is a way for me to become more comfortable with DevOps and SysEng scenarios.

---

## How


1. [Install Virtualbox](https://www.virtualbox.org/manual/ch02.html)
2. [Install Vagrant](https://www.vagrantup.com/docs/installation/)
3. Clone this repo
4. Run the labrat_install.sh script
5. ...
6. Profit

Not familiar with vagrant? No problem. Wiki entry incoming. However, until that's done, please visit [Vagrant - Getting Started](https://www.vagrantup.com/docs/getting-started/) for a quick tutorial on this.

---

## Implementation

### File Structure

The project tree can be seen below. This will likely change throughout the life of the project, but it's best to start with some idea of the pathing I am to use.

```
/labrat/
|--environments
|   |--test
|   |   |--modules                  # directory for puppet modules
|   |   |   |--module_1
|   |   |   |--module_2
|   |   |--manifests
|   |   |   |--packages/            # directory holding package configurations
|   |   |   |   |--base_packages.pp
|   |   |   |--init.pp              # entry point
|   |   |   |--package_init.pp      # manages package installations
|   |   |   |--users.pp             # manages the users and groups
|   |   |   |--files.pp             # manages files and directories
|   |   |   |--repos.pp             # manages the repositories used
|   |   |   |--services.pp          # manages services expected
|   |   |--environment.conf         # provides the paths needed by puppet
|   |--web                          # same as test, but a web
|--boxes                            # this directory stores packaged boxes
|   |--box_1
|   |--box_2
|--shared                           # this folder (and its contents) will be shared with the running box
|   |--package_1_dir
|   |--package_2_dir
|   |--file_1
|   |--file_2
|--Vagrantfile                      # configuration file needed for Vagrant to run
|--labrat_install.sh                # script to download boxes
```
---

### Distros

The plan is to be able to stand up the following boxes and provision the configurations via Puppet.
* Centos 7.1        bento/centos-7.1
* Centos 6.7        bento/centos-6.7
* CoreOS            antoniomeireles/coreos-stable
* Ubuntu 14.04      ubuntu/trusty64
* Ubuntu 16.04      ubuntu/xenial64

---
### Puppet

Puppet implementation here

---

### References
* [Puppet Cookbook](www.puppetcookbook.com)
* [Vagrant Documentation](https://www.vagrantup.com/docs/)