#!/bin/bash
#Script para la generación de un certificado de cliente de OpenVPN
#Author: David Conde  -> david@intrared.biz
#Archivo: openvpn_createuser.sh
echo 'Introduzca un nombre de usuario para la generación de certificado cliente:'
read CLIENTNAME
echo 'el usuario a crear es:'
echo $CLIENTNAME
echo
docker-compose run --rm openvpn easyrsa build-client-full $CLIENTNAME
docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn
export CLIENTNAME=" "
echo 'El script ha finalizado.'
