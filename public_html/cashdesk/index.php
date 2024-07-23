<?
/*******************************************************************************
* CASH DESK - INDEX                                                            *
*                                                                              *
* Version: 1.0                                                                 *
* Date:    21.11.2018                                                          *
* Author:  Stefano LUISE                                                       *
*                                                                              *
* Version: 2.0                                                                 *
* Date:    10.04.2019                                                          *
* Aggiunta gestione pasti omaggio                                              *
* Version: 2.1                                                                 *
* Date:    24.07.2019                                                          *
* Inserita estensione BAR a scontrino                                          *
*******************************************************************************/

//Controllo accesso
include("session_exists.php");
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

?>

<!DOCTYPE html>
<html>
	<head>
		<title><?php echo "CASH DESK v.2.1"; ?> </title>
	</head>

<!-- Costruzione dei Frame -->
	<frameset rows="92,*" border="0" framespacing="0">
		<frame name="head" src="head.php" frameborder="0" scrolling="no">
		
    		<frameset cols="140,*" border="1" framespacing="1">
    			<frame name="navi" src="navi.php" frameborder="0" scrolling="auto">
        			<frame name="content" src="start.php" frameborder="0" marginwidth="10">
				</frameset>
	</frameset>
	<iframe src="utility\disk_space_01.php" frameborder="0" scrolling="no" width="350" height="36"></iframe>
</html>
