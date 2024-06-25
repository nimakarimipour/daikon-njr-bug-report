#!/bin/bash

# store current dir in a variable
current_dir=$(pwd)

# Running the program under the control of DynComp
echo "Running the program under the control of DynComp"
java -cp $current_dir/benchmark/jarfile/AMD64ExecutionEngine.jar:$DAIKONDIR/daikon.jar daikon.DynComp edu.syr.bytecast.interp.amd64.AMD64ExecutionEngine 

# Running the program under the control of the Chicory front
echo "Running the program under the control of the Chicory front"
java -cp $current_dir/benchmark/jarfile/AMD64ExecutionEngine.jar:$DAIKONDIR/daikon.jar daikon.Chicory --daikon --comparability-file=AMD64ExecutionEngine.decls-DynComp edu.syr.bytecast.interp.amd64.AMD64ExecutionEngine 