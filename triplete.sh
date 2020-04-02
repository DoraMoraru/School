#!/bin/bash

while true;
do
{
        File=$1
        cuvant=$2
        k=$3
        grep "^.*\($cuvant\).*\{$k,\}$" $File
        shift 3
}
done
