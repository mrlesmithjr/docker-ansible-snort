Repo Info
=========
Builds and configures a working [Snort] image provisioned using [Ansible].

Building
--------
* If you change the variables defined in `docker-entrypoint.yml` to define
additional settings. You will need to rebuild the image.
```
docker build -t snort .
```

Consuming
---------
* CLI:
  ```
  docker run -d -e "SNORT_INT=eth0" --net=host mrlesmithjr/snort
  ```
* Compose:
  ```
  git clone https://github.com/mrlesmithjr/docker-ansible-snort.git
  cd docker-ansible-snort
  docker-compose up -d --build
  ```

Configuration
-------------
* To configure specific [Snort] settings and/or enable specific [Snort] rules
  * Adjust variables defined in `docker-entrypoint.yml`
    ```
    snort_blacklist_path: '/etc/snort/rules'
    snort_debian_rules:  #These rules are installed by default on Debian
      - local.rules
      #- app-detect.rules
      - attack-responses.rules
      - backdoor.rules
      - bad-traffic.rules
      #- blacklist.rules
      #- botnet-cnc.rules
      #- browser-chrome.rules
      #- browser-firefox.rules
      #- browser-ie.rules
      #- browser-other.rules
      #- browser-plugins.rules
      #- browser-webkit.rules
      - chat.rules
      - community-sql-injection.rules
      - community-web-client.rules
      - community-web-dos.rules
      - community-web-iis.rules
      - community-web-misc.rules
      - community-web-php.rules
      - community-sql-injection.rules
      - community-web-client.rules
      - community-web-dos.rules
      - community-web-iis.rules
      - community-web-misc.rules
      - community-web-php.rules
      #- content-replace.rules
      - ddos.rules
      - dns.rules
      - dos.rules
      - experimental.rules
      #- exploit-kit.rules
      - exploit.rules
      #- file-executable.rules
      #- file-flash.rules
      #- file-identify.rules
      #- file-image.rules
      #- file-java.rules
      #- file-multimedia.rules
      #- file-office.rules
      #- file-other.rules
      #- file-pdf.rules
      - finger.rules
      - ftp.rules
      - icmp-info.rules
      - icmp.rules
      - imap.rules
      #- indicator-compromise.rules
      #- indicator-obfuscation.rules
      #- indicator-scan.rules
      #- indicator-shellcode.rules
      - info.rules
      #- malware-backdoor.rules
      #- malware-cnc.rules
      #- malware-other.rules
      #- malware-tools.rules
      - misc.rules
      - multimedia.rules
      - mysql.rules
      - netbios.rules
      - nntp.rules
      - oracle.rules
      #- os-linux.rules
      #- os-mobile.rules
      #- os-other.rules
      #- os-solaris.rules
      #- os-windows.rules
      - other-ids.rules
      - p2p.rules
      #- phishing-spam.rules
      #- policy-multimedia.rules
      #- policy-other.rules
      - policy.rules
      #- policy-social.rules
      #- policy-spam.rules
      - pop2.rules
      - pop3.rules
      #- protocol-dns.rules
      #- protocol-finger.rules
      #- protocol-ftp.rules
      #- protocol-icmp.rules
      #- protocol-imap.rules
      #- protocol-nntp.rules
      #- protocol-pop.rules
      #- protocol-rpc.rules
      #- protocol-scada.rules
      #- protocol-services.rules
      #- protocol-snmp.rules
      #- protocol-telnet.rules
      #- protocol-tftp.rules
      #- protocol-voip.rules
      #- pua-adware.rules
      #- pua-other.rules
      #- pua-p2p.rules
      #- pua-toolbars.rules
      - rpc.rules
      - rservices.rules
      #- scada.rules
      - scan.rules
      #- server-apache.rules
      #- server-iis.rules
      #- server-mail.rules
      #- server-mssql.rules
      #- server-mysql.rules
      #- server-oracle.rules
      #- server-other.rules
      #- server-samba.rules
      #- server-webapp.rules
      #- shellcode.rules
      - smtp.rules
      - snmp.rules
      #- specific-threats.rules
      #- spyware-put.rules
      - sql.rules
      - telnet.rules
      - tftp.rules
      - virus.rules
      #- voip.rules
      #- web-activex.rules
      - web-attacks.rules
      - web-cgi.rules
      - web-client.rules
      - web-coldfusion.rules
      - web-frontpage.rules
      - web-iis.rules
      - web-misc.rules
      - web-php.rules
      - x11.rules
    snort_dynamic_library_rules: []
      #- bad-traffic.rules
      #- chat.rules
      #- dos.rules
      #- exploit.rules
      #- icmp.rules
      #- imap.rules
      #- misc.rules
      #- multimedia.rules
      #- netbios.rules
      #- nntp.rules
      #- p2p.rules
      #- smtp.rules
      #- snmp.rules
      #- specific-threats.rules
      #- web-activex.rules
      #- web-client.rules
      #- web-iis.rules
      #- web-misc.rules
    snort_external_net: '!$HOME_NET'
    snort_home_net:
      - '10.0.0.0/8'
      - '172.16.0.0/12'
      - '192.168.0.0/16'
    snort_preproc_rule_path: '/etc/snort/preproc_rules'
    snort_rule_path: '/etc/snort/rules'
    snort_so_rule_path: '/etc/snort/so_rules'
    snort_whitelist_path: '/etc/snort/rules'
    ```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[Snort]: <https://www.snort.org>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
