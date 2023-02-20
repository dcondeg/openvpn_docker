#!/bin/bash
#Script para el borrado de un certificado de cliente de OpenVPN
#Author: David Conde  -> david@intrared.biz
#Archivo: openvpn_delete.sh
echo 'Introduzca un nombre de usuario para el borrado de certificado cliente:'
read CLIENTNAME
echo 'el usuario a borrar es:'
echo $CLIENTNAME
echo
# Borrando los correspondientes archivos crt, key y req.
docker-compose run --rm openvpn ovpn_revokeclient $CLIENTNAME remove
export CLIENTNAME=" "
echo 'El script ha finalizado.'
