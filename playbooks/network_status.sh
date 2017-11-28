#!/bin/bash


hname=$(hostname)

dir=${PWD}/network-$(date +%Y%m%d%H%M)
echo "${dir}"

echo "Creating Directory"
mkdir ${dir}

sfile=${dir}/host-${hname}
echo "${sfile}"

touch ${sfile}

echo "logging Network Statistics"
ifstat -n -t -i ens3  >> ${sfile}
