FROM websphere-liberty

# Install curl and then clean up after (Healthcheck uses curl)
# RUN apt-get update \
#    && apt-get install -y curl \
#    && rm -rf /var/lib/apt/lists/*

# Pull in the ferret WAR
ENV FERRET_VERSION 1.3
COPY ./target/ferret-$FERRET_VERSION-SNAPSHOT.war /config/dropins/ferret.war

# Add healthcheck file to call then set it as the healthcheck
# ADD healthcheck /opt/ibm/docker
# HEALTHCHECK CMD /opt/ibm/docker/healthcheck
