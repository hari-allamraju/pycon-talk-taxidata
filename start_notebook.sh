#!/usr/bin/env bash

echo "Saving PYTHONPATH"
ORIGINAL_PYTHONPATH=$PYTHONPATH
echo "Prepending package to PYTHONPATH"
export PYTHONPATH="$PWD:$ORIGINAL_PYTHONPATH"
echo "Starting Jupyter"
jupyter notebook
echo "Reverting to the original PYTHONPATH"
export PYTHONPATH=$ORIGINAL_PYTHONPATH
