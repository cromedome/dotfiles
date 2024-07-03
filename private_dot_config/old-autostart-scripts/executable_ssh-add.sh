#!/bin/bash

export SSH_ASKPASS=/usr/bin/ksshaskpass

ssh-add $HOME/.ssh/id_rsa $HOME/.ssh/rtadmin_rsa $HOME/.ssh/softserve_rsa

