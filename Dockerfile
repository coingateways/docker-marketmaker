FROM coingateways/atomicdex-mm
RUN apt-get update && \
  apt-get install -y python3-pip

RUN pip3 install requests simplejson python-bitcoinlib

RUN git clone https://github.com/smk762/pytomicDEX.git

RUN cd pytomicDEX && \
  wget https://raw.githubusercontent.com/jl777/coins/master/coins && \
  /bin/rm /pytomicDEX/lib/logo.txt && \
  /bin/touch /pytomicDEX/lib/logo.txt

RUN /bin/cp /usr/local/bin/mm2 /pytomicDEX

COPY entrypoint.sh /usr/local/bin/

CMD ["/usr/local/bin/entrypoint.sh"] 
