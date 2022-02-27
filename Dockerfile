FROM ubuntu:latest
ENV TZ=Asia/Shanghai
WORKDIR /root
RUN apt update -y && apt upgrade -y && apt install -y wget && wget -O /root/ttyd https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 && chmod +x ttyd && mv ttyd /usr/sbin
COPY run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh
#CMD ttyd -p 8989 -c yin2na:2327077 bash
#CMD ["ttyd", "-c", "yin2na:2327077", "-p", "8989", "bash"]
