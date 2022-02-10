#!/bin/env python3

import sys
from unicodedata import digit

# Se vuoi leggere/scrivere da file decommenta qua
# fin = open("input.txt", "r")  # File di input fornito dalla piattaforma
# fout = open("output.txt", "w")  # Output da inviare alla piattaforma

# Se vuoi leggere/scrivere da linea di comando decommenta qua
fin = sys.stdin  # input fornito dalla piattaforma
fout = open("output.txt", "w")  # Output da inviare alla piattaforma

special_characters = '`,~,!,@,#,$,%,^,&,*,(,),_,-,+,=,{,[,},},|,\,:,;,",<,,,>,.,?,/'



def hasConsecutiveChars(stringa):
    for i in range(len(stringa)-1):
        if (stringa[i] == stringa[i+1]): return True
    return False


#controllo regola 6   FALSE se VIOLA, TRUE se VA BENE
def validazione(nuova, vecchia):
    if (abs(len(nuova) - len(vecchia)) > 1 ): return False    
    #le due lunghezze differiscono di più di 1 char, perciò sappiamo che la condizione 6 non è verificata
    if (len(nuova)-1 == len(vecchia)):
        if nuova in vecchia: return False
    if (len(nuova) == len(vecchia)):
        if vecchia == nuova: return False
        for i in range(len(nuova)):
            if (nuova[i] != vecchia[i]):
                if (nuova[0:i] == vecchia[0:i] and nuova[i+1:] == vecchia[i+1:]): return False
                    #la prima parte è uguale, bisogna controllare la seconda

    if (len(nuova)+1 == len(vecchia)):
        if vecchia in nuova: return False

    #controlla carattere per carattere le 2 stringhe per verificare che non vi siano state modifiche
    if (len(nuova) - len(vecchia) == 1):
        #nuova > vecchia
        for i in range(len(nuova)-1):
            if (nuova[i] != vecchia[i]):
                if (nuova[0:i] == vecchia[0:i]):
                    #la prima parte è uguale, bisogna controllare la seconda
                    if (i < len(nuova)-2):
                        #INDICE NON HA RAGGIUNTO IL LIMITE
                        if (nuova[i+1:] == vecchia[i:]): return False
               
    if (len(nuova) - len(vecchia) == -1):
        #vecchia > nuova
        for i in range(len(vecchia)-1):
            if(nuova[i] != vecchia[i]):
                if (nuova[0:i] == vecchia[0:i]):
                    #la prima parte è uguale, bisogna controllare la seconda
                    if (i < len(vecchia)-2):
                        #INDICE NON HA RAGGIUNTO IL LIMITE
                        if (nuova[i:] == vecchia[i+1:]): return False


    return True
    


def controlla(nuova, vecchia):
    # SCRIVI QUA IL TUO CODICE
    # RITORNA 0 SE LA NUOVA PASSWORD NON SEGUE LE SPECIFICHE
    if (len(nuova)<8 or len(nuova)>16): return 0

    if (hasConsecutiveChars(nuova)): return 0

    if not validazione(nuova, vecchia): return 0

       
    
    #controlla se nuova contiene un carattere Maiuscolo
    upperCase = False
    for i in range(len(nuova)):
        if nuova[i].isupper(): 
            upperCase = True
            break
    if not upperCase: return 0

    #controlla se nuova contiene un carattere minuscolo
    lowerCase = False
    for k in range(len(nuova)):
        if nuova[k].islower():
            lowerCase = True
            break
    if not lowerCase: return 0

    

    #controlla se contiene un carattere numerico
    digit_Char = False
    for x in range(len(nuova)):
        if nuova[x].isdigit():
            digit_Char = True
            break
    if (not digit_Char): return 0


    spec_char = False
    for y in range(len(nuova)):
        if (not nuova[y].isalpha() and not nuova[y].isdigit()): 
            spec_char = True 
            break   #carattere speciale trovato
    #PSW NON VALIDA
    if (not spec_char): return 0


            
    # RITORNA 1 SE LA NUOVA PASSWORD SEGUE LE SPECIFICHE
    return 1


N = int(fin.readline().strip())

for _ in range(N):
    nuova, vecchia = fin.readline().strip().split(" ")
    msg = str(controlla(nuova, vecchia))+"\n"
    fout.writelines(msg)
    
fout.close()
