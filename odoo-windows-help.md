# Como crear un módulo
Nos colocamos en la carpeta server y ejecutamos el comando scaffold
```
cd C:\Program Files (x86)\Odoo 10.0\server
odoo-bin scaffold nombremodulo odoo/addons
```
# Ver el log de procesos en Windows
Instalamos Windows Server 2003 Resource Kit Tools
https://www.microsoft.com/en-us/download/confirmation.aspx?id=17657

Nos colocamos en la carpeta de la app
```
cd C:\Program Files (x86)\Windows Resource Kits\Tools
```

Ejecutamos en el CMD el siguiente comando
```
tail.exe -f "C:\Program Files (x86)\Odoo 9.0-20160521\server\openerp-server.log"
```

# Agregar carpeta con directorio
Abrimos el fichero odoo.conf y lo editamos para adicionarle en la línea addons_path la carpeta con nuestros módulos
C:\Program Files (x86)\Odoo 10.0\server\odoo.conf
```
addons_path = C:\Program Files (x86)\Odoo 10.0\server\odoo\addons,D:\GITHUB\odoo-chile-community
```
