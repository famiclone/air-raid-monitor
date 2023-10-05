FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/waveshare/e-Paper.git ~/e-Paper
RUN pip3 install ~/e-Paper/RaspberryPi_JetsonNano/python/

COPY . .

CMD [ "python", "./main.py" ]
