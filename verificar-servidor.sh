#!/bin/bash

echo "Script para verificar servidor linux."
echo "Prof. Paulo Henrique S. Barbosa"
echo "Laboratório de Redes - Linux"

echo ""
echo ""

echo -n "Coloque seu nome completo: "
read -a aluno

echo -n "Coloque sua matricula: "
read matricula

touch "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo " ################### History Essencial ! ##################" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

history | grep apache2 >> "$aluno-$matricula.log"
history | grep php >> "$aluno-$matricula.log"
history | grep mysql >> "$aluno-$matricula.log"
history | grep dhcpd >> "$aluno-$matricula.log"
history | grep samba >> "$aluno-$matricula.log"
history | grep proftpd >> "$aluno-$matricula.log"
history | grep bind >> "$aluno-$matricula.log"
history | grep named.conf.local >> "$aluno-$matricula.log"
history | grep named.conf.options >> "$aluno-$matricula.log"
history | grep dhcpd >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo " ################### History COMPLETO! ##################" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

history -r
history >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

echo " ################### ARQUIVOS DE CONFIGURACAO! ##################" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

cat /etc/apache2/apache2.conf >> "$aluno-$matricula.log"
cat /etc/proftpd/proftpd.conf >> "$aluno-$matricula.log"
#cat /etc/bind/named.conf.local >> "$aluno-$matricula.log"
#cat /etc/bind/named.conf.options >> "$aluno-$matricula.log"
cat /etc/samba/smb.conf >> "$aluno-$matricula.log"
cat /etc/dhcp/dhcpd.conf >> "$aluno-$matricula.log"
cat /etc/default/isc-dhcp-server >> "$aluno-$matricula.log"

echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"
echo ""
echo ""
echo "ENVIE ESTE ARQUIVO SOMENTE SE TIVER TERMINADO TUDO! :D"
echo ""
echo ""

echo ""
echo " Dados Essenciais...Ook"
echo " ################### Dados essenciais ! ##################" >> "$aluno-$matricula.log"
echo ""
echo ""
uname -a >> "$aluno-$matricula.log"
w >> "$aluno-$matricula.log"
who >> "$aluno-$matricula.log"

echo ""
echo ""


echo ""
echo ""
echo ""
echo ""
echo "Envie o arquivo com seu nome para o professor. O arquivo está neste mesmo diretório que executou este script. :D"
echo ""
echo ""
echo "" >> "$aluno-$matricula.log"
echo "" >> "$aluno-$matricula.log"

cat $aluno-$matricula.log | base64 > $aluno-$matricula.enviar
##rm $aluno-$matricula.log
