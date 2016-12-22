## Cambiamos el PassWord a Root ###
sudo passwd root

## Instalamos Odoo ###
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/9.0/nightly/deb/ ./" >> /etc/apt/sources.list
apt-get update && apt-get install odoo

## Instalamos git ###
sudo apt install git

## Instalamos la libreria de PDF ##
sudo apt-get update
# sudo apt-get install wkhtmltopdf

## nos colocamos sobre la carpeta de modulos ###
cd /usr/lib/python2.7/dist-packages/openerp/addons

## Instalamos el primer modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_vat
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/base_state_ubication
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_counties
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_base_rut
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_partner_activities
sudo service odoo restart


## instalamos el gestor de paquete de phyton PIP ##
sudo apt-get install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 


## pip ##
pip install xmltodict
pip install dicttoxml
pip install elaphe
pip install M2Crypto
pip install cchardet
pip install SOAPpy
# pip install signxml
pip install cryptography
pip install pysftp
pip install signxml==1.0.1
pip install xlsxwriter

## Instalamos bibliotecas ##
apt install swig python-dev python-cffi libxml2-dev libxslt1-dev libssl-dev python-lxml python-openssl  python-defusedxml

## Instalamos modulo
git clone https://github.com/falconsoft3d/report_xlsx
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/falconsoft3d/webservices_generic
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_invoice
sudo service odoo restart


## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_dte_caf
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_dte
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/global_discount
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/user_signature_key
sudo service odoo restart
# rm -Rf user_signature_key - Si tienes un error borra la carpeta.


## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_stock_picking
sudo service odoo restart


## Instalamos modulo
git clone -b 9.0 https://github.com/dansanti/l10n_cl_libro_compra_venta
sudo service odoo restart
# rm -Rf l10n_cl_libro_compra_venta


# ver los procesos de log 
cd /var/log/odoo
nano odoo-server.log

# si lo quiero limpiar 
rm odoo-server.log

# Instalamos el nginx
sudo apt-get install nginx

# comfiguramos el archivo default que debe estar en:
# /etc/nginx/sites-available  o /usr/local/nginx/conf, /etc/nginx, or /usr/local/etc/nginx.
# usamos el siguiente fichero: https://github.com/falconsoft3d/ngix-odoo/blob/master/default
# reiniciamos el nginx
nginx -s reload

pip install requests==2.6.0

wget http://download.gna.org/wkhtmltopdf/0.12/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.debz


# Configuraciones en Odoo despues de instalado
1- El impuesto debe ser global
2- La precisión decimal de la moneda CLP debe ser 0
3- El código de iva debe ser 14 para compras
4- Las facturas de compras siempre debes marca las como no recuperable


http://globalresponse.cl/blog/nuestro-blog-1/post/instalacion-facturacion-electronica-4



# Remplazar logo en tienda
<img t-att-src="'data:image/png;base64,%s' % res_company.logo" class="img img-responsive" t-att-alt="'Logo of %s' % res_company.name" t-att-title="res_company.name"/>

addons_path = /usr/lib/python2.7/dist-packages/openerp/addons, /var/lib/odoo/.local/share/Odoo/addons/9.0

# permiso de escritura 
chmod 777 -R  /var/lib/odoo/

#
/usr/lib/python2.7/dist-packages
/openerp/addons

#
/var/lib/odoo/.local
/share/Odoo/addons/9.0

#




