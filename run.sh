#!/usr/bin/env bash

SAMPLES=160
QBITS=26

python3 benchmark.py --samples ${SAMPLES} --qubits ${QBITS} #--single True
