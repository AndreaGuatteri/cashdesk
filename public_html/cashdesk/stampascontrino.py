# -*- encoding: utf-8 -*-
import usb.core
import usb.util
import sys
import MySQLdb
import codecs 
import logging
# Open database connection
db = MySQLdb.connect("localhost","cashdesksql","cashdesksql","cashdesk" )

# prepare a cursor object using cursor() method
cursor = db.cursor()
id_stampante = sys.argv[9]

sql = "SELECT * FROM parametri WHERE descrizione LIKE 'logo'"
# Execute the SQL command
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
 logo = row[2]

sql = "SELECT * FROM parametri WHERE descrizione LIKE 'estensione_bar'"
# Execute the SQL command
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
 estensione_scontrino = int(row[2],0)

sql = "SELECT * FROM stampanti WHERE id LIKE '%s'" % id_stampante
print ("Query1 = "+sql)
# Execute the SQL command
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
 codec = row[10]
 ip_stampante = row[6]
 connessione = row[5]
 cucina = int(row[2],0)
 cucina2 = int(row[3],0)

if ((cucina == 1) or (cucina2 == 1)):
 estensione_scontrino = 0;

sql = "SELECT * FROM caratteri WHERE charset LIKE '%s'" % codec
print ("Query = "+sql)
# Execute the SQL command
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
 euro = row[2]
 egrave = row[3]
 eacuto = row[4]
 agrave = row[5]
 igrave = row[6]
 ograve = row[7]
 ugrave = row[8]
# disconnect from server
scofull = sys.argv[1]
scodiviso = scofull.split("_")
sco = scodiviso[0]
datagiorno = scodiviso[1]
ora = scodiviso[2]
datagiorno_split = datagiorno.split("-")
datagiorno_rev = datagiorno_split[2] + "-" + datagiorno_split[1] + "-" + datagiorno_split[0]
sql = "SELECT * FROM scontrini WHERE (scontrino LIKE '%s' AND data LIKE '%s' AND ora LIKE '%s' AND tipo_piatto LIKE 'bar')" % (sco,datagiorno,ora)
# Execute the SQL command
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
presenza_bar=0
estensione_bar = "";
for row in results:
 presenza_bar = 1
 estensione_bar += "n. "+ row[6] + "   "+ row[5] + "\x0d\x0a"
 
# Cerca numero tavolo 
sql = "SELECT * FROM scontrini WHERE (scontrino LIKE '%s' AND data LIKE '%s' AND ora LIKE '%s')" % (sco,datagiorno,ora)
# Esegue query per cercare lo scontrino
cursor.execute(sql)
# Fetch all the rows in a list of lists.
results = cursor.fetchall()
num_tavolo=0
estensione_tavolo = ""
for row in results:
 if (row[13]!=""):
  estensione_tavolo = "TAVOLO N. "+ row[13] +"\x0d\x0a"

db.close()

from escpos.printer import Usb
from escpos.printer import Network
#sco = sys.argv[1]
asp = sys.argv[2]
cop = sys.argv[3]
intestazione = sys.argv[6]
prodid = int(sys.argv[7],0)
vendid = int(sys.argv[8],0)
stringa = sys.argv[4]
#estensione_bar = "BAR \x0d\x0a n.1 Coca Cola \x0d\x0a n.1 Acqua \x0d\x0a";

if connessione == 'USB':
   Epson = Usb(prodid,vendid)
if connessione == 'Rete':
   Epson = Network(ip_stampante,9100)
   
euro = codecs.escape_decode(euro)[0]
egrave = codecs.escape_decode(egrave)[0]
agrave = codecs.escape_decode(agrave)[0]
eacuto = codecs.escape_decode(eacuto)[0]
igrave = codecs.escape_decode(igrave)[0]
ograve = codecs.escape_decode(ograve)[0]
ugrave = codecs.escape_decode(ugrave)[0]
stringa=stringa.replace("è",egrave)
stringa=stringa.replace("à",agrave)
stringa=stringa.replace("é",eacuto)
stringa=stringa.replace("ì",igrave)
stringa=stringa.replace("ò",ograve)
stringa=stringa.replace("ù",ugrave)
stringa=stringa.replace("€",euro)
filelogo = open ("./logos/"+logo+".hex", "r")
data=filelogo.read()
data = codecs.escape_decode(data)[0]
filelogo.close()
Epson._raw(data)  # Stampa logo
Epson.charcode("LATIN2")
Epson.set("LEFT","A","normal",1,1,9)
Epson.set("LEFT","A","B",1,1,9)
Epson.text("\n"+intestazione+"\n\n")
Epson.set("LEFT","A","B",2,2,9)
Epson.text("N."+sco+" ")
Epson.set("LEFT","B","B",1,2,9)
Epson.text("COPERTI "+cop+"   "+asp+" "+estensione_tavolo+"\n")
Epson.set("LEFT","A","normal",1,1,9)
Epson._raw(stringa+"\n")
Epson.text("\n")
Epson.text("\n")
Epson.text("\n")
Epson.text("\n")
Epson.text("\n")
Epson.cutriga()
if presenza_bar == 1 and estensione_scontrino == 1:
 Epson.set("LEFT","A","B",2,2,9)
 Epson.text("BAR   N."+sco+"   "+"\n")
 Epson.set("LEFT","A","normal",1,1,9)
 Epson.text(datagiorno_rev)
 Epson.text("\n")
 Epson.text("\n")
 Epson._raw(estensione_bar+"\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.cutriga()
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
 Epson.text("\n")
Epson.close()
