#!/bin/sh

print_help() {
    BASE="listdir-docker"
    echo "Usage:"
    echo "${BASE} --help    print this help message"
    echo "${BASE}           list directories and exit"
    echo "${BASE} cron      list directories in cron job"
    exit 1
}

if [ "$#" -eq "0" ]
then
    /listdir.sh
elif [ "$#" -eq "1" ]
then
    if [ "$1" = "--help" ]
    then
        print_help
    elif [ "$1" = "cron" ]
    then
        echo "${CRON_SCHEDULE} /listdir.sh > /proc/1/fd/1 2>/proc/1/fd/2" >> "/etc/crontabs/root"
        echo "run cron with schedule ${CRON_SCHEDULE}"
        crond -f -d 8
    else
        print_help
    fi
else
    print_help
fi
