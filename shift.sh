#!/bin/bash

echo Command: $0
echo First four agrs: $1 $2 $3 $4

shift
echo some agrs: $1 $2 $3 $4

shift 3
echo another args: $1 $2 $3 $4
