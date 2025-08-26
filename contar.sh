
#Crear un archivo contar.sh para contar las líneas de archivos .txt. Se utiliza un bucle for para recorrer todos 
#los archivos .txt en el directorio actual, y dentro del bucle, el comando wc -l para contar
#las líneas de cada archivo y mostrar el resultado. 


    #!/bin/bash

    # Recorre todos los archivos .txt en el directorio actual
    for archivo in *.txt; do
      # Verifica si el archivo existe antes de procesarlo
      if [ -f "$archivo" ]; then
        # Cuenta el número de líneas en el archivo y lo muestra
        echo "El archivo '$archivo' tiene: $(wc -l < "$archivo") líneas"
      fi
  
    done



#Dar permisos de ejecución:   chmod +x contar.sh

#./contar.sh  Ejecutar el script: para ver la cantidad de líneas de cada archivo .txt en el directorio. 



#Explicación del código: 

    # !/bin/bash: Indica que el script debe ser ejecutado con el intérprete bash.
    # for archivo in *.txt; do ... done: Este bucle for itera sobre todos los archivos que terminan
    # con la extensión .txt en el directorio actual.
    # if [ -f "$archivo" ]; then ... fi: Comprueba si el elemento archivo actual es un archivo regular
    # antes de intentar procesarlo. Valida que el item realmente existe y evita que el for intente procesar 
    # texto literal si no hay .txt
    # echo "El archivo '$archivo' tiene: ... líneas": Muestra un mensaje indicando el nombre del archivo.
    # $(wc -l < "$archivo"): Esta es la parte principal que cuenta las líneas, es la forma estandar decontar lineas

     #   wc -l: Es un comando de Unix/Linux que cuenta el número de líneas de un archivo.

     #   < "$archivo": Redirige la salida del archivo especificado al comando wc -l, para q cuente
     #   las líneas de ese archivo en particular.

     #   $(): Es la sustitución de comandos en bash, que ejecuta el comando dentro de los paréntesis
     #   y sustituye la salida por su resultado.

  