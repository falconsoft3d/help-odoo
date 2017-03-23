# Actualizar un modulo
```
/etc/init.d/odoo stop
su - odoo -s /bin/bash
python /usr/bin/odoo -c /etc/odoo/odoo.conf -d db-sii -u l10n_cl_base
```

# Actualizar todo los modulos
```
/etc/init.d/odoo stop
su - odoo -s /bin/bash
python /usr/bin/odoo -c /etc/odoo/odoo.conf -d db-sii -u all
```
