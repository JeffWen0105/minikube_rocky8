#!/bin/bash

# =======================================================================
# Author: Jeff
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:

# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# If not, see <http://www.gnu.org/licenses/>.
# =======================================================================

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
