Program to upload data received into ./outbox and query into specified MySQL database within "./sendDataToDB.py". Data must be into .tar.lzma compressed files

Main.py does all the work, whenever you want to query sent data just execute it and let the magic happens.
TIP: Schedule this python file into crontab is a good option if you don't want to do it manually.


_________
Español:

Programa para subir datos recibidos dentro de ./outbox e insertarlos dentro de la base de datos MySQL especificada en "./sendDataToDB.py". Los datos deben de estar dentro de archivos comprimidos .tar.lzma

Main.py hace todo el trabajo, cuando quieras insertar la informacion recibida solamente ejecutalo y deja que la magia ocurra.
TIP: Ejecutar este archivo de forma periodica de forma automática dentro de crontab es una buena opcion si no quieres hacerlo manualmente.