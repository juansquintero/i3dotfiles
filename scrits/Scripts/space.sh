#!/bin/bash

not=$(df -h | grep sda5)
not_home=$(df -h | grep sda6)

dunstify -u urgent "  Mount        Size  Used Free  U%  MP " "$not\n$not_home"
