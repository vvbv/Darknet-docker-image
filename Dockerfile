FROM debian

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install build-essential -y

RUN mkdir workspace
WORKDIR /workspace/

RUN git clone https://github.com/pjreddie/darknet.git
WORKDIR /workspace/darknet/

RUN make

CMD /bin/bash
