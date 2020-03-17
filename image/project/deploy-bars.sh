if [ -z "$MQSI_VERSION" ]; then
  source /opt/ibm/ace-11/server/bin/mqsiprofile
fi

if ls /home/aceuser/bars/*.bar >/dev/null 2>&1; then
  for bar in /home/aceuser/bars/*.bar
  do
    mqsideploy -a $bar -i tcp://admin:admin@localhost -p 7600
  done
fi

