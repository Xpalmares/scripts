#!/usr/bin/env bash

# Opções.

editor="vim"

# Variaveis

dia_de_hoje=$( date +'%d/%b/%y' )

header="#!/usr/bin/env bash
# --------------------------------------------------------------------------
# Script   :
# Descrição:
# Versão   : 0.1
# Autor    : Everton Gabriel
# Conntato : <everton.gabriel09@unifesp.br> 
# Data     : $dia_de_hoje
# Linceça  : GNU/GPL v3.0
# --------------------------------------------------------------------------
# Informações :
# --------------------------------------------------------------------------
"

##Testar se usuário passou o número certo de argumentos(apenas 1)..

[[ $# -ne 1 ]] && echo "Opa! Atenção apenas precisa de um(1 Argumento), só um  nome de arquivo é necessário!" && exit 1

##Testar se o arquivo já existe.

[[ -f $1 ]] && echo "Opa! Já existe um arquivo com o mesmo nome! Saindo!" && exit 1

echo "$header" > $1
chmod +x $1
$editor $1

exit 0
