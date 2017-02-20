# Instación en Odoo 10
1] Instalamos el Docker

<code>
sudo wget -qO- https://get.docker.com/ | sh
</code>

2] Agregar el usuario actual al grupo docker y de esta manera no es necesario usar sudo

<code>
sudo gpasswd -a ${USER} docker
</code>

3] Reiniciamos el Docker

<code>
sudo service docker restart
</code>

4] Reiniciamos el servidor de Linux para que el usuario entre en el grupo del Docker

<code>
sudo reboot
</code>

5] Correr un contenedor docker con postgres a partir de la imágen oficial.

docker run -d --restart="always" --name="postgres" \

-v /opt/database:/var/lib/postgresql/data \

-v /var/log/postgresql:/var/log/postgresql postgres:9.4

En caso que además desees que el contenedor se reinicie al reiniciar el equipo, deberás incluir --restart="always" como una de las opciones del comando. (válido para todos los contenedores).

6] Conectarse al contenedor postgres y crear un usuario "odoo" en la imagen de postgres
Esto debe ser hecho por única vez:

docker exec -ti postgres sh -c 'exec psql -U postgres'
CREATE USER odoo WITH PASSWORD 'odoo';
ALTER USER odoo WITH SUPERUSER;
\q

7] Correr un contenedor de Odoo conectando postgres:

docker run -d --restart="always" --name odoo \
-v /opt/odoo/extra-addons:/mnt/extra-addons \
-p 8069:8069 \
--link postgres:db -t odoo:10


# Instalamos el Segundo Docker


docker run -d --restart="always" --name odoo9 \
-v /opt/odoo/extra-addons9:/mnt/extra-addons \
-p 8070:8069 \
--link postgres:db -t odoo:9


# Configuración
Ahora solo tienes que crear la base de datos


