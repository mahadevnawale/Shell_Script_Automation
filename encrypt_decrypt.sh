#!/bin/bash

# openssl ence command used to encrypt and decrypt files or data usig various encryption algorithms.

openssl enc -aes-256-cbc -salt -in file.txt -out file.txt.enc
openssl enc -d -aes-256-cbc -in file.txt.enc -out file.txt

