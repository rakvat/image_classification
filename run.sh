#!/bin/bash

FILES=images/check/$1/*
for f in $FILES
do
  echo "Processing $f file..."
  docker run -it retrained_image_classifier bazel-bin/tensorflow/examples/label_image/label_image --graph=/tmp/output_graph.pb --labels=/tmp/output_labels.txt --input_layer=Mul --output_layer=final_result --image=/root/$f
done

