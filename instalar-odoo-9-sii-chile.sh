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
sudo apt-get install wkhtmltopdf

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


## Instalamos bibliotecas ##
apt install swig python-dev python-cffi libxml2-dev libxslt1-dev libssl-dev python-lxml python-openssl  python-defusedxml

## Instalamos bibliotecas ##
pip install cryptography

## pip
pip install pysftp

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

## Modulos Python ##
pip install M2Crypto
pip install cchardet
pip install SOAPpy
pip install signxml


## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/global_discount
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/user_signature_key
sudo service odoo restart
# rm -Rf user_signature_key - Si tienes un error borra la carpeta.

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_dte
sudo service odoo restart

## Instalamos modulo ##
git clone -b 9.0 https://github.com/dansanti/l10n_cl_stock_picking
sudo service odoo restart

## Instalamos modulo ##
pip install signxml==1.0.1
pip install xlsxwriter


## Instalamos modulo
git clone -b 9.0 https://github.com/dansanti/l10n_cl_libro_compra_venta
sudo service odoo restart
# rm -Rf l10n_cl_libro_compra_venta


# ver los procesos de log 
cd /var/log/odoo
nano odoo-server.log

# si lo quiero limpiar 
rm odoo-server.log
