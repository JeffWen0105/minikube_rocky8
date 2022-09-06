#!/bin/bash


set -e
export START_TS=$(date +%s)
export SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export VERSION=1.18

source ${SDIR}/.install_minkube/utils.sh

test "$(whoami)" = "root" || log_err "Not running as root"

source ${SDIR}/.install_minkube/init.sh

source ${SDIR}/.install_minkube/install.sh

source ${SDIR}/.install_minkube/start.sh



export END_TS=$(date +%s)
export TIME_TAKEN="$(( ($END_TS - $START_TS) / 60 ))"

echo 
echo "##########################################################"
echo "#### MINIKUBE INSTALLATION FINISHED SUCCESSFULLY TGC101###"
echo "##########################################################"
echo "          time taken = $TIME_TAKEN minutes"
echo "Use Command:  kubectl get pods --all-namespaces"