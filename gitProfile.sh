#!/bin/sh

gitprofile() {
#    echo -e "请输入git名称":name
    read -rp "请输入git名称：" name
    setname
}

function setname() {

    git config --global user.name "$name"
    echo "set success"
    read -rp "请输入email：" email
    setemail
}

function setemail() {

    git config --global user.email "$email"
    echo "set success"
    
}

gitprofile
