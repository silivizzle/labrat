#! /bin/bash

cd ~ \

vagrant box add bento/centos-7.1 --provider virtualbox                  ;
vagrant box add bento/centos-6.7 --provider virtualbox                  ;
vagrant box add antoniomeireles/coreos-stable --provider virtualbox     ;
vagrant box add ubuntu/trusty64 --provider virtualbox                   ;
vagrant box add ubuntu/xenial64 --provider virtualbox