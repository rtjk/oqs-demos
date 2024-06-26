#!/bin/sh

set -e

for i in "CROSSrsdp128balanced" "CROSSrsdp128fast" "CROSSrsdp128small" "CROSSrsdp192balanced" "CROSSrsdp192fast" "CROSSrsdp192small" "CROSSrsdp256balanced" "CROSSrsdp256fast" "CROSSrsdp256small" "CROSSrsdpg128balanced" "CROSSrsdpg128fast" "CROSSrsdpg128small" "CROSSrsdpg192balanced" "CROSSrsdpg192fast" "CROSSrsdpg192small" "CROSSrsdpg256balanced" "CROSSrsdpg256fast" "CROSSrsdpg256small"
do
    echo "######################################################################"
    echo $i
    # TEST_TIME=5
    docker run -e -e KEM_ALG=kyber768 -e SIG_ALG=$i -it oqs-curl perftest.sh
done