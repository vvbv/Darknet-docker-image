FROM debian

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install build-essential -y

RUN mkdir workspace
WORKDIR /workspace/

RUN git clone https://github.com/pjreddie/darknet.git
WORKDIR /workspace/darknet/

RUN make

RUN apt-get install wget -y
COPY yolov3.weights /workspace/darknet/yolov3.weights
RUN chmod 777 -R /workspace/

CMD /bin/bash
