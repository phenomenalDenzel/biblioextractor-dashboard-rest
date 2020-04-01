FROM airhacks/glassfish
COPY ./target/biblioextractor-dashboard-rest.war ${DEPLOYMENT_DIR}
