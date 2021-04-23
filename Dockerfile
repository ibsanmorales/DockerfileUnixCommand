# Inicia seleccionando la imagen de base
FROM ubuntu

LABEL Ibsan Morales <ibsan_89@hotmail.com>

WORKDIR /root

RUN  apt-get -y update && \
     apt-get install -yq apt-utils unzip curl csvkit
     #Descarga de datos Salud
RUN  curl -O  http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip && \
     unzip datos_abiertos_covid19.zip && \
     rm datos_abiertos_covid19.zip && \
     #Encontrar Archivo mas Reciente con terminacion COVID19MEXICO.csv 
     FIND_FILE_INEGI_lAST=$(find . -name '*COVID19MEXICO.csv*' | sort -r | head) && \
     #INTUBADOS
     #limpieza de datos de intubados
     csvcut -c 3,6,10,13,14,16,17,25,28,34 ${FIND_FILE_INEGI_lAST} | csvgrep -i -c 3 -m "9999-99-99" | csvgrep -i -c 4 -m "99" | csvgrep -c 1 -m "1" | csvgrep -c 10 -m "1" | csvgrep -c 5 -m "1" | csvcut -c 2,3,4,6,8,9 > fecha_defunciones_intubado_privado_limpia.csv && \
     #Estadisticas de Edad de intubados
     csvstat -c EDAD fecha_defunciones_intubado_privado_limpia.csv > stat.csv

CMD ["bash"]