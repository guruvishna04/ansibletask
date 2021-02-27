Role Name
=========

configure nginx to serve static files via paths in location variables

Role Variables
--------------

* locations

Example Playbook
----------------


```yaml
  - hosts: aworker
    become: true
    roles:
      - - { role: nginx-konfigurierende vars: { locations: ["red" , "green", "blue", "yellow"] } }

```

results
-------

to check results on vm amanager or host use the following command

```sh
curl -iL --max-redirs 1 aworker/red

```

```html
HTTP/1.1 301 Moved Permanently
Server: nginx/1.18.0 (Ubuntu)
Date: Sat, 27 Feb 2021 21:22:01 GMT
Content-Type: text/html
Content-Length: 178
Location: http://aworker/blue/
Connection: keep-alive

HTTP/1.1 200 OK
Server: nginx/1.18.0 (Ubuntu)
Date: Sat, 27 Feb 2021 21:22:01 GMT
Content-Type: text/html
Content-Length: 63
Last-Modified: Sat, 27 Feb 2021 21:15:04 GMT
Connection: keep-alive
ETag: "603ab658-3f"
Accept-Ranges: bytes

<!DOCTYPE html>
<html>
<body>

<h1>red</h1>


</body>

```
