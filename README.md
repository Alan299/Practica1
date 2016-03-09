# Practica1
Ejecutar el proyecto en netbeans 8.1 EE con servidor glassfish y hibernate3.4

Para crear el proyecto necestitas una conexión con una base de datos POSTGRESQL con por lo menos una tabla definida.
En netbeans crear una conexión con tu base de datos:
  Ir a servicios -> Databases (click derecho) -> New connection En New Connection Wizard usar el puerto (port): 5432,
  Host: localhost, Database: nombre de tu base de datos, schema: public, 
  input connection name: el nombre que quieras para tu conección.
  
Creación del proyecto web desde netbeans.
  Create project -> web application, seleccionar los frames Glashfish y Java sever faces, crear projecto.
  
En el projecto vamos a source packages -> <default package> click derecho -> New -> Others -> Hibernate
  -> Hibernate Reverse Enginnering Wizard -> crea el archivo hibernate.reveng.xml


En el projecto vamos a source packages -> <default package> click derecho -> New -> Others -> Hibernate
  -> Hibernate Maping Files POJOS -> Ingresar el nombre del paquete -> 
  en el paquete creado aparecerán las clases que corresponden con las tablas de la base de datos.


Respuestas al questionario.
¿Cuanto tiempo te llevo resolver la práctica ?
4 horas

¿Como se llaman los archivos de configuraciones de Hibernate, tuviste alguna dificultad con la configuración de estos?
hibernate.cfg.xml, hibernate.reveng.
Tuve muchas deificultades pues al principio no creaba los POJOS y faltaba el driver de la base de datos, 
no sabia como configurar hibernate.connection.url y no sabia donde agregarlo.
