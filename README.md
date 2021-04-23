# DockerfileUnixCommand
Proyecto para poner aprueba conocimiento sobre Docker y Commandos linux enfocado como herramientas para Ciencia de datos

## Motivacion
La ciencia de datos se caracteriza por la integración de distintas áreas tales 
como la matemática, estadística, computación entre otras. En nuestro caso las 
herramientas de computación nos ayudan a hacer grandes niveles de procesamientos 
y obtener resultados en tiempo muy cortos de ahí la importancia de tener 
un buen conocimiento sobre las herramientas y software existentes de apoyo para esta tareas. 
Otro punto importante sobre el trabajo en Ciencia de datos son los ambientes multidisciplinarios y equipos de trabajo.

Con este proyecto se intenta dar un pequeño ejemplo de dos tecnologías que ayudan a un mejor manejo 
de nuestro proyecto en términos de control de versiones, realizar tareas automatizadas por línea de comando
y compartir nuestro entorno de desarrollo de una manera relativamente sencilla.
/play secret

## Descripcion
Este mini proyecto contiene un dockerfile para genera una imagen que descarga informacion de [Covid19 Mexico](http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip)
y este mismo archivo le da un tratamiento a esta informacion como comandos Unix generando dos documentos nuevos, un archivo con limpieza en datos y un archivo con estadisticas sobre la edad de los pasientes 
con covid 19 que fueron intubados.

## Tecnologia / Software
* Unix Commands
* Docker (dockerfile)
* Git Bash
* wsl (windows)

## Uso
1. Antes del usar debes contar con las tecnologias ya mencionadas en la seccion de _Tecnologia / software_
2. Clona el repositorio
3. Ejecuta el commando *docker build <imagen-name> .*, el (.) es el directorio donde se encuntra el documento
[dockerfile](Dockerfile)
4. Con esto se genera un imagen con las configuraciones necesaria.

## Creditos
- Diplomando en Ciencia de Datos, Universidad de Sonora.
- @jwaissman

### Ligas de ayuda
- [Docket doc.](https://docs.docker.com/)
- [Comandos Unix](http://swcarpentry.github.io/shell-novice/)

[Documento de Contribuidores](CONTRIBUTING.md) 