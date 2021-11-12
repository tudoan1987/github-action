FROM mongoclient/mongoclient:4.0.0

USER root

# Google cloud sdk and rsync stuff

RUN apt-key update
RUN apt-get update

RUN apt-get -y install apt-transport-https ca-certificates gnupg

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN export LD_LIBRARY_PATH=/usr/local/lib

RUN apt-get install python-minimal -y

RUN  apt-get install python-pip  -y

RUN apt-key update
RUN apt-get update

RUN RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-sdk=300.0.0-0
 -y
      
