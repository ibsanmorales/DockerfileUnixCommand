# Inicia seleccionando la imagen de base
FROM ubuntu

LABEL Ibsan Morales <ibsan_89@hotmail.com>

WORKDIR /

RUN  apt-get -y update && \
     apt-get install -yq apt-utils unzip curl csvkit
     
ADD script_rutina.sh / 

ENTRYPOINT ["/script_rutina.sh"]

CMD ["bash"]