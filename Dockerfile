FROM continuumio/anaconda3

RUN apt-get install -y make

RUN /opt/conda/bin/pip install ciw chart_studio jupyter --quiet

RUN adduser --disabled-password --gecos "" dashcon-user
USER dashcon-user 

WORKDIR /home/dashcon-user

COPY All_Your_Queues_DashCon_2020.ipynb /home/dashcon-user
COPY img /home/dashcon-user/img
COPY arr_times.pickle /home/dashcon-user
COPY arr_times_csv.zip /home/dashcon-user

COPY Makefile /home/dashcon-user

ENTRYPOINT ["/usr/bin/make"]
