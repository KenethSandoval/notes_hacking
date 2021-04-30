# Creación y gestión de usuarios

- Usualmente en linux se encuentran varios tipos de shells

- Buscar las shells "sh"
  ```bash 
    cat /etc/passwd | grep "sh$"
  ```

- Buscar los usuarios de shells "sh"
  ``` bash
    cat /etc/passwd | grep "sh$" | awk '{print $1}' FS=':'
  ```

## Crear un nuevo usuario a nivel de sistema
** 1. crear un directorio en "/home"
** 2. useradd -d /home/[nombre] -s /bin/bash [nombre]
** 3. darle una contraseña "passwd [user]"
** 4. asignarle directorio y grupos "chown" comando para asignarle directorio. Ahora para los grupos con "chgrp"
** 5. migramos al usuario su [usuario]


