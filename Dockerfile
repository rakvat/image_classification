FROM gcr.io/tensorflow/tensorflow:latest-devel

WORKDIR /tensorflow
RUN bazel build --config opt tensorflow/examples/label_image:label_image
RUN bazel build --config opt tensorflow/examples/image_retraining:retrain
RUN curl -L "https://storage.googleapis.com/download.tensorflow.org/models/inception_v3_2016_08_28_frozen.pb.tar.gz" | tar -C tensorflow/examples/label_image/data -xz

COPY ./images /root/images
