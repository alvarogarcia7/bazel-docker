FROM ubuntu

RUN apt-get update && \
  apt-get install -y curl gnupg && \
  curl https://bazel.build/bazel-release.pub.gpg | apt-key add - && \
  echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
  apt-get update && apt install -y bazel && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* 
