#!/bin/bash
find . -type f -size +1M -exec cat {} >> file1 \; 

