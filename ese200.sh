#!/bin/bash

# Il mio primo script per shell Linux/Unix

echo "Il nome del file eseguibile e' \"$0\""
echo

if [ $# -gt 1 ]
then
	i=0
	for arg in "$@"
	do
		i=$(($i + 1))
	    echo "L'argomento $i e': \"$arg\""
	done
else
	echo 'Hai invocato il programma senza alcun argomento.'
    echo 'Riprova, specificando gli argomenti dopo il nome del programma, separandoli con uno spazio.'
fi

r=$(($RANDOM % 256))
echo
echo "Ho generato il numero casuale $r: lo utilizzo come exit code."
echo 'Per visualizzarlo, digita (senza virgolette)'
echo '- in Prompt dei Comandi: "echo %ERRORLVEL%"'
echo '- in Linux (o CygWin):   "echo $?"'
exit $r

# Osservazioni
#
# 1) Nota che alcune stringhe hanno virgolette doppie, mentre altre hanno virgolette singole: qual è la differenza?
# 2) Nota che richiamare echo senza argomento stampa una riga vuota
# 3) Nota la sintassi del for (una delle possibili): prova a fare variazioni