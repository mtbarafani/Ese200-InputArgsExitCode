#!/bin/bash
# Il mio primo script per shell Linux/Unix

echo "Il nome del file eseguibile e' \"$0\""
echo #stampa una riga vuota

if [ $# -gt 0 ]    #se il numero degli argomenti è maggiore di 0
then 
i=0
for arg in $@      #ciclo su delle parole in una stringa
 do
	i=$i+1  #incrementazione contatore per il numero dell'argomento
    echo "L'argomento $i e': \"$arg\"" #stampa dell'argomento
        done   
else
	echo 'Hai invocato il programma senza alcun argomento.'
fi 					#fine ciclo

r=$(($RANDOM % 256)) #funzione per generare un numero casuale da 1 a 255
echo
echo "Ho generato il numero casuale $r: lo utilizzo come exit code."
echo 'Per visualizzarlo, digita (senza virgolette)'
echo '- in Prompt dei Comandi: "echo %ERRORLVEL%"'
echo '- in Linux (o CygWin):   "echo $?"'
exit $r #stampa del numero casuale usato come exit code



# Amplia lo script
#
# 1) Come ottengo il numero degli argomenti di input specificati?
# 2) Come posso fare un ciclo for che stampi tutti gli argomenti specificati?
# 3) Come posso generare un codice di uscita casuale?