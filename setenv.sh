# Make sure we have our ENV_PERSONALWEBAPP_DIR environment variable set.
if [ -z "$ENV_PERSONALWEBAPP_DIR" ]; then
    echo "Need to set ENV_PERSONALWEBAPP_DIR"
    exit 1
fi

# Make sure we have our ENV_FGWEBAPP_DIR environment variable set.
if [ -z "$ENV_FGWEBAPP_DIR" ]; then
    echo "Need to set ENV_FGWEBAPP_DIR"
    exit 1
fi

# Make sure we have our ENV_ADDRESSBOOK_DIR environment variable set.
if [ -z "$ENV_ADDRESSBOOK_DIR" ]; then
    echo "Need to set ENV_ADDRESSBOOK_DIR"
    exit 1
fi

PERSONALWEBAPP_CONFIG_DIR=$ENV_PERSONALWEBAPP_DIR/config
export PERSONALWEBAPP_CONFIG_DIR

FGWEBAPP_CONFIG_DIR=$ENV_FGWEBAPP_DIR/config
export FGWEBAPP_CONFIG_DIR

ADDRESSBOOK_CONFIG_DIR=$ENV_ADDRESSBOOK_DIR/config
export ADDRESSBOOK_CONFIG_DIR

# Log4J properties
PERSONAL_WEBAPP_LOG4J="-Dpersonalwebsite.log4j.file=$PERSONALWEBAPP_CONFIG_DIR/log4j.xml"
FELLOWSHIPGROUP_WEBAPP_LOG4J="-Dfellowshipgroups.log4j.file=$FGWEBAPP_CONFIG_DIR/log4j.xml"
ADDRESSBOOK_WEBAPP_LOG4J="-Daddressbook.log4j.file=$ADDRESSBOOK_CONFIG_DIR/log4j.xml"

# Runtime directory properties
PERSONALWEBAPP_RUNTIME_PROPERTY="-Dpersonalwebsite.runtime.properties.dir=$PERSONALWEBAPP_CONFIG_DIR"
FGWEBAPP_RUNTIME_PROPERTY="-Dfellowshipgroups.runtime.properties.dir=$FGWEBAPP_CONFIG_DIR"
ADDRESSBOOK_RUNTIME_PROPERTY="-Daddressbook.runtime.properties.dir=$ADDRESSBOOK_CONFIG_DIR"

export JAVA_OPTS="${ADDRESSBOOK_WEBAPP_LOG4J} ${RUNTIME_PROPERTY}"
