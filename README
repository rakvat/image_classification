## Experiments with Tensorflow Image Classification and Retraining

From the tensorflow tutrials.

When collection images, create this folder structure in the images folder:
```
images
  train
    example_category
      image.jpg ...
    other_category
      other_image.png ...
  check
    example_category
      image_2.png ...
    other_category
      image_3.png ...
```

Create a container for image classifiation with inception v3
```
make build
docker run -it -p 6006:6006 image_classifier bash
```

run this in the container to classify an image
```
bazel-bin/tensorflow/examples/label_image/label_image --image=$HOME/images/check/example_category/image_2.png
```

Retrain with your own images and categories
```
make build_retrained
docker run -it -p 6006:6006 retrained_image_classifier bash
```

run in the container
```
bazel-bin/tensorflow/examples/label_image/label_image --graph=/tmp/output_graph.pb --labels=/tmp/output_labels.txt --input_layer=Mul --output_layer=final_result --image=$HOME/images/check/example_category/image_2.png
tensorboard --logdir /tmp/retrain_logs
```
