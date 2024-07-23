<?
/*******************************************************************************
* CASH DESK - DATE TIME SETUP                                                  *
*                                                                              *
* Version: 1.0                                                                 *
* Date:    28.03.2019                                                          *
* Author:  Stefano Luise                                                       *
*******************************************************************************/
//Controllo accesso
include("session_exists.php");
// viene sostituita la funzione di session_start();
 if(!session_exists())
 {
 	header('location:login.php');
	exit;
 }
 /*Ulteriore controllo sulla sessione attivata dall'utente*/
if(!isset($_SESSION['userid']))
{
	header('location:login.php');
	exit;
}
 
include("role_check.php"); 
define ("ROLE_ADMIN", 0);
define ("ROLE_POWERUSER", 1);
define ("ROLE_A_MANAGER", 2);
define ("ROLE_BASIC", 3);


define('EURO',chr(128)); // definizione del carattere EURO


?>
<!DOCTYPE html>
<head>
<title>Date Time setup</title>

<link href="cssnn.css" rel="stylesheet" type="text/css">

<style type="text/css">
table.fixed {table-layout:fixed; width:90px;}/*Setting the table width is important!*/
table.fixed td {overflow:hidden;}/*Hide text outside the cell.*/
table.fixed td:nth-of-type(1) {width:100px;}/*Setting the width of column 1.*/
table.fixed td:nth-of-type(2) {width:100px;}/*Setting the width of column 2.*/
table.fixed td:nth-of-type(3) {width:100px;}/*Setting the width of column 3.*/
table.fixed td:nth-of-type(4) {width:100px;}/*Setting the width of column 4.*/
table.fixed td:nth-of-type(5) {width:100px;}/*Setting the width of column 5.*/
table.fixed td:nth-of-type(6) {width:100px;}/*Setting the width of column 6.*/
table.fixed td:nth-of-type(7) {width:100px;}/*Setting the width of column 7.*/
table.fixed td:nth-of-type(8) {width:100px;}/*Setting the width of column 8.*/

table.seleziona {table-layout:fixed; width:90px;}/*Setting the table width is important!*/
table.seleziona td {overflow:hidden;}/*Hide text outside the cell.*/
table.seleziona td:nth-of-type(1) {width:200px;}/*Setting the width of column 1.*/
table.seleziona td:nth-of-type(2) {width:50px;}/*Setting the width of column 2.*/
table.seleziona td:nth-of-type(3) {width:50px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(4) {width:100px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(5) {width:50px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(6) {width:50px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(7) {width:100px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(8) {width:100px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(9) {width:100px;}/*Setting the width of column 3.*/
table.seleziona td:nth-of-type(10) {width:100px;}/*Setting the width of column 3.*/

body{font:12px verdena,arial,sans-serif;background-color: #ffffff;}
div#container{width: 500px;padding: 10px;margin: 0px auto;
    background-color: #FFF;text-align: left}
/*h1{font-size: 20px;color: #375FAD;border-bottom: 5px solid #B02F2F;margin: 0}*/
h3{font-size: 18px;text-align: center}
h4{font-size: 16px;text-align: center}
p#intro{font-size: 110%;text-align:left}

fieldset{padding: 8px;border: 1px solid #B02F2F;margin-bottom: 20px}
legend{padding: 0 5px;text-transform: uppercase;color: #B02F2F}
label.req strong, strong.asterisco{font-weight: bold;font-family: verdana,sans-serif;color: red}
input:focus{background-color: #ffc}
br{clear:left}
fieldset.in label{float: left;text-align: left;margin: 1px 20px 1px 0}
fieldset.in input,select{display: block;width: 170px}
fieldset.in input.large{width: 355px}

input#ordernumber,input#delivery_date,input#import,input#cap,input#provincia,input#to_date,input#from_date{width: auto}

select#ordernumber{width: auto}
fieldset#check label{float: left;width: 120px}
fieldset#account p{float: right;width: 190px;color: #185DA1;margin-top: 10px}
fieldset#agree div#cond{width: 355px;height: 150px;overflow: auto;
    border:1px solid #666;margin: 10px 0;background-color: #f7f7f7}
fieldset#agree div#cond p{margin:0 5px 6px}
div#bottone{text-align: center}
input#exit{float:right;width: 40px;height: 20px;margin-right: 135px;margin-bottom: 10px;
		font-size: 9px;cursor: pointer}
input#insert{float:left;width: 40px;height: 20px;margin-right: 20px;margin-bottom: 10px;
		font-size: 9px;cursor: pointer}
input#go{float: left;width: 80px;height: 20px;margin-left: 20px;margin-bottom: 10px;
		font-size: 9px;cursor: pointer}
/*input#go{border:1px solid #666;background: #ACCDF6 url(sfondobottone.jpg) repeat-x}*/
</style>
<STYLE>
   /*  You can modify these styles to anything you want (or is allowed). */
   /* These are used by both browsers.  You can set these to your preferences. */
#it{
background-image:url("freccia.jpg");

}
   .td1style  {font-weight:normal;border:1px solid black;background-color:lightgrey;color:blue;font-size:14px;fontFamily:Verdana;}
   .td2style  {font-weight:normal;border:1px solid black;background-color:lightyellow;font-size:12px;font-family:Verdana;}
</STYLE>
</head>
<body>

<?  /*Modulo connessione data base */
include("../../Accounts_MySql/datilogin.txt");
mysqli_set_charset($link, 'utf8');
?>
<br>

<?
/***********************************/
/*   Pressione pulsante IMPOSTA    */
/*       per impostazione ora      */
/***********************************/
if (isset($_POST['press_new']))
{
 $giorno = $_POST['giorno'];
 $mese = $_POST['mese'];
 $anno = $_POST['anno'];
 $ora = $_POST['ora'];
 $minuto = $_POST['minuto'];
 exec ("sudo /home/pi/tempo.sh ".$anno." ".$mese." ".$giorno." ".$ora." ".$minuto);
 echo "Impostata data e ora : ".$giorno."/".$mese."/".$anno."   ".$ora.":".$minuto;
}
/* FINE pressione pulsante IMPOSTA */
?>

<form action="dataora.php" method="post">
<fieldset style="width:400px">
<legend>Imposta Data e Ora</legend>
<?php
echo "<table class='fixed'>";
echo "<tr>";
echo "<td align='center'>";
echo "Giorno";
echo "</td>";
echo "<td align='center'>";
echo "Mese";
echo "</td>";
echo "<td align='center'>";
echo "Anno";
echo "</td>";
echo "<td align='center'>";
echo "Ora";
echo "</td>";
echo "<td align='center'>";
echo "Minuti";
echo "</td>";
echo "</tr>";
echo "<tr>";

echo "<td align='center'>";
echo "<input id=\"giorno\" type='text' style=\"font-size:80%;text-align:center\" size='12' name=\"giorno\">";
echo "</td>";

echo "<td align='center'>";
echo "<input id=\"mese\" type='text' style=\"font-size:80%;text-align:center\" size='12' name=\"mese\">";
echo "</td>";

echo "<td align='center'>";
echo "<input id=\"anno\" type='text' style=\"font-size:80%;text-align:center\" size='12' name=\"anno\">";
echo "</td>";

echo "<td align='center'>";
echo "<input id=\"ora\" type='text' style=\"font-size:80%;text-align:center\" size='12' name=\"ora\">";
echo "</td>";

echo "<td align='center'>";
echo "<input id=\"minuto\" type='text' style=\"font-size:80%;text-align:center\" size='12' name=\"minuto\">";
echo "</td>";

echo "</tr>";
echo "</table>";


echo "<input type=\"HIDDEN\" name=\"press_new\" value=\"1\">";
echo "<br>";
?>
<input type="submit" value="Imposta">
</fieldset>
</form> 

