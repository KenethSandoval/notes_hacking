# Detección de versión y servicios con nmap [nmap tutorial](https://protegermipc.net/2018/11/07/tutorial-y-listado-de-comandos-mas-utiles-para-nmap/)

Realizamos una deteccíon y versión de servicios de forma simple en nuestro computador "localhost", no recomiendo usar nmap o alguna herramienta similar para realizar ataques a servicios ajenos ya podrias recibir una visita muy interesante.

- Vemos los puertos abiertos escaneados en el capitulo anterior('./Pentesting.md') y empezamos con el escaneo a los puertos

```bash
  $ nmap -sC -sV -p53,80 [ip] -oN targeted
```
* La opcion -p es para verificar los puertos deseados.
* La -oN targeted es para importar todo el output a un archivo con ese nombre.

- Ahora la siguiente herramienta podemos realizar un inspección de la web que deseamos atacar

```bash
  $ whatweb http://192.168.1.1 2>/dev/null
```

* con la opcion 
```
  2>/dev/null
```
ignoramos cualquier tipo de error que nos de el comando.

## Técnicas para agilizar nuestros escaneos con nmap

```bash 
 $ sudo nmap -sS --min-rate 5000 --open -vvv -n -Pn -p- 192.168.1.1 -oG allPorts
```

## Reconocimiento a través de los scripts que incorpora nmap

```bash
  $ nmap -p22 [ip] --script "vuln and safe" -oN smbScan
```
