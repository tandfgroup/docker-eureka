#!/bin/bash

CONFIG_FILE="$1"

for VAR in `env`
do
    if [[ $VAR =~ ^EUREKA_ ]]; then
        echo $VAR
        eureka_name=`echo "$VAR" | sed -r "s/(.*)=.*/\1/g" | tr '[:upper:]' '[:lower:]' | tr _ . | tr 0 - `
        echo $eureka_name
        env_var=`echo "$VAR" | sed -r "s/(.*)=.*/\1/g"`
        if egrep -q "(^|^#)$eureka_name=" $CONFIG_FILE; then
            sed -r -i "s@(^|^#)($eureka_name)=(.*)@\2=${!env_var}@g" $CONFIG_FILE #note that no config values may contain an '@' char
        else
            echo "\n$eureka_name=${!env_var}" >> $CONFIG_FILE
        fi
    fi
done

cat $CONFIG_FILE