install_apache:
  pkg.installed:
    - pkgs:
        - apache2

index_html:
    file.manage:
      - name: /var/www/html/index.html
      - user: apache2
      - group apache2
      - mode: 644
      - source: salt://apache/templates/index.html

apache_service:
  service.running:
    - name: apache2
    - enable: True