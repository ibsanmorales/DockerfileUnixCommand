# Inicia seleccionando la imagen de base
FROM ubuntu

LABEL Ibsan Morales <ibsan_89@hotmail.com>

WORKDIR /root

RUN  apt-get -y update && \
     DEBIAN_FRONTEND=noninteractive apt-get install -yq apt-utils nano vim unzip git curl=7.76.1 python-dev python-pip python-setuptools build-essential csvkit=0.9.1

RUN  curl -O  http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip && \
     unzip datos_abiertos_covid19.zip && \
     rm datos_abiertos_covid19.zip && \
     #DATE_NOW=$(date '+%y%m%d') && \
     #FIND_FILE_INEGI_DATE=$(find . -name ${DATENOW}'COVID19MEXICO.csv') && \
     FIND_FILE_INEGI_lAST=$(find . -name '*COVID19MEXICO.csv*' | sort -r | head) && \
     #INTUBADOS
     csvcut -c 3,6,10,13,14,16,17,25,28,34 ${FIND_FILE_INEGI_lAST} | csvgrep -i -c 3 -m "9999-99-99" | csvgrep -i -c 4 -m "99" | csvgrep -c 1 -m "1" | csvgrep -c 10 -m "1" | csvgrep -c 5 -m "1" | csvcut -c 2,3,4,6,8,9 > fecha_defunciones_intubado_privado_limpia.csv && \
     csvstat -c EDAD fecha_defunciones_intubado_privado_limpia.csv > stat.csv

CMD ["bash"]