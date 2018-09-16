docker run -p 8080:8080 -p 9990:9990 -it --rm jboss/wildfly:14 /opt/jboss/wildfly/14/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
