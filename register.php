<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>::e-voting::</title>
<link rel="stylesheet" type="text/css" href="__styles/main__$tyle.css" />
<link rel="stylesheet" href="__styles/menu/style.css" type="text/css" />
<style type="text/css">
div#bo__dy div#bo__dy_conts {overflow: scroll;}
</style>
</head>

<body>
 <div id="whole">  
  <div id="hEa__d">
     <div id="lo__go">
	    <img src="__styles/logo.png" style="position: relative; top:-20px; left:-30px;" />
	 </div>
	 <div id="ba__nner">
	    <img style=" position:relative; top:20px; left:20px;" src="__styles/banner.png" />
	 </div>
  </div>
  <div id="me__nu">
  <div id="menu">
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="index.php" style="width:135px;height:21px;line-height:21px;"><img src="__styles/menu/house.png" alt=""/>Home</a></li>
	<li class="topmenu"><a href="voting.php" style="width:136px;height:21px;line-height:21px;"><img src="__styles/menu/tick.png" alt=""/>Voting</a></li>
	<li class="topmenu"><a href="register.php" style="width:135px;height:21px;line-height:21px;" id="active"><img src="__styles/menu/disk.png" alt=""/>Register</a></li>
	<li class="topmenu"><a href="login.php" style="width:136px;height:21px;line-height:21px;"><img src="__styles/menu/door_in.png" alt=""/>Login</a></li>
	<li class="toplast"><a href="#" style="width:135px;height:21px;line-height:21px;"><span><img src="__styles/menu/help.png" alt=""/>Electrol council</span></a>
	<ul>
		<li class="subfirst"><a href="electHelp.php">Help</a></li>
		<li><a href="electGalery.php">Gallery</a></li>
		<li><a href="electContact.php">Contact</a></li>
	</ul></li>
</ul>
</div>
  
  </div>
  <div id="bo__dy">
     <div id="bo__dy_pub">
	  <div id="recents">
	      <img src="files/NEC.jpg" />
		  <p>Abayobozi bakuru bari kuganira ku gikorwa cy'Amatora inkuru irambuye twayibaza<A href="venuste.php"> Venuste</A>Umunyamakuru wa NEC</p>
	   </div>
	   <div id="recents">
	      <img src="files/NEC.jpg" />
		  <p>Abayobozi bakuru bari kuganira ku gikorwa cy'Amatora inkuru irambuye twayibaza<A href="venuste.php"> Venuste</A>Umunyamakuru wa NEC</p>
	   </div>
	   <div id="sliding__imgs">
	     <img src="__styles/vote1.jpg" />
	   </div>
	 </div>
	 <div id="bo__dy_conts">
	  <?php 
if(isset($_POST['Register']))
{
include"connection.php";
$one=mysql_query("
INSERT INTO `election`.`voter` (`ID`, `VoterCard`, `Number_of_ID`, `Names`, `FatherNames`, `MotherNames`, `DoB`, `District`, `sec_name`, `cell_name`, `VotingCenter`, `pob`, `password`) VALUES (NULL, '$_REQUEST[VoterCard]', '$_REQUEST[Number_of_ID]', '$_REQUEST[Names]', '$_REQUEST[FatherNames]', '$_REQUEST[MotherNames]', '$_REQUEST[DoB]', '$_REQUEST[District]', '$_REQUEST[sec_name]', '$_REQUEST[cell_name]', '$_REQUEST[VotingCenter]', '$_REQUEST[pob]', '$_REQUEST[password]');",$con)or die(mysql_error());
if($one)
{
echo"<center><u><h4><font color='#003300'><H3>Congratulation,</h3></font></h4></u></center>";
echo"<center><u><h4><font color='#003300'><H3>Your Account Has Been Successfully Created to Vote!,</h3></font></h4></u></center>";
echo"<p><font color='#003300'><p>Now you are an Active Member Of E-VOTING SYSTEM; which give you a power to Vote online and view
your Candidate Status on this website.</p></font></p>";

}
mysql_close($con);
}
?>
	 <fieldset><legend><h3>Register here</h3></legend>
<form method="post" enctype="multipart/form-data"><table width="500" height="100" background bgcolor="#FFFFFF"align="center"  bgcolor="#CCCCCC">
<tr><td><span class="legend">VoterCard :<span style="color:#FF0000;">*</span></span></td><td><input type="text" name="VoterCard" class="desing" required /></td></tr><tr>
<td><span class="legend">IDNumber <span style="color:#FF0000;">*</span></span></td><td><input type="text" name="Number_of_ID" class="desing" required/></td></tr><tr>
<td><span class="legend">Names <span style="color:#FF0000;">*</span></span></td><td><input type="text" name="Names" class="desing" required/></td></tr><tr><td><span class="legend">FatherNames<span style="color:#FF0000;">*</span></span></td><td><input type="text" name="FatherNames"  class="desing" required /></td></tr>

<td><span class="legend">MotherNames<span style="color:#FF0000;">*</span></span></td><td><input type="text" name="MotherNames" class="desing" required/></td></tr><tr>
<td><span class="legend">DoB<span style="color:#FF0000;">*</span></span></td><td><input type="text" name="DoB" class="desing" required/></td></tr><tr>
<td><span class="legend">District<span style="color:#FF0000;">*</span></span></td><td><select name="District" class="desing" required><option value="0101">Nyarugenge</option>
					<option value="0102">Gasabo</option>
					<option value="0103">Kicukiro</option>
					<option value="0201">Nyanza</option>
					<option value="0202">Gisagara</option>
					<option value="0203">Nyaruguru</option>
					<option value="0204">Huye</option>
					<option value="0205">Nyamagabe</option>
					<option value="0206">Ruhango</option>
					<option value="0207">Muhanga</option>
					<option value="0208">Kamonyi</option>
					<option value="0301">Karongi</option>
					<option value="0302">Rutsiro</option>
					<option value="0303">RUBAVU</option>
					<option value="0304">Nyabihu</option>
					<option value="0305">Ngororero</option>
					<option value="0306">Rusizi</option>
					<option value="0307">Nyamasheke</option>
					<option value="0401">Rulindo</option>
					<option value="0402">Gakenke</option>
					<option value="0403">Musanze</option>
					<option value="0404">Burera</option>
					<option value="0405">Gicumbi</option>
					<option value="0501">Rwamagana</option>
					<option value="0502">Nyagatare</option>
					<option value="0503">Gatsibo</option>
					<option value="0504">Kayonza</option>
					<option value="0505">Kirehe</option>
					<option value="0506">Ngoma</option>
					<option value="0507">Bugesera</option>
					<option value="0601">Afrique</option>
					<option value="0602">Europe</option>
					<option value="0603">America</option>
					<option value="0604">Asia</option>
					<option value="0605">Australia</option>
					<option selected="selected" value=""></option></select></td></tr><tr>
<td><span class="legend">Sector<span style="color:#FF0000;">*</span></span>
<td> <select name="sec_name" required>
				<option>Select your sector here</option>
		<?php 
$con=mysql_connect("localhost","root","");
if(!$con)
{
die('Could not connect to the database:'.mysql_error());
}
 if($con)
{
$select=mysql_select_db('election',$con);
}
			$q=mysql_query("SELECT sec_name FROM sector ORDER BY sec_id DESC",$con);
			while($row=mysql_fetch_array($q))
			{
				echo"<option value=".$row['sec_name'].">".$row['sec_name']."</option>";
			}
			mysql_close($con);
		?></select>
</td></tr><tr>
<td><span class="legend">Cell<span style="color:#FF0000;">*</span></span></td>
<td> <select name="cell_name" required>
				<option>Select your cell here</option>
		<?php 
$con=mysql_connect("localhost","root","");
if(!$con)
{
die('Could not connect to the database:'.mysql_error());
}
 if($con)
{
$select=mysql_select_db('election',$con);
}
			$q=mysql_query("SELECT cell_name FROM cell ORDER BY cell_id DESC",$con);
			while($row=mysql_fetch_array($q))
			{
				echo"<option value=".$row['cell_name'].">".$row['cell_name']."</option>";
			}
			mysql_close($con);
		?></select>
</td></td></tr>
<td><span class="legend">VotingCenter <span style="color:#FF0000;">*</span></span></td><td><input type="text" name="VotingCenter"  class="desing" required /></td>
<tr><td><span class="legend">PoB<span style="color:#FF0000;">*</span></span></td><td><input type="text" name="pob"  class="desing" required /></td></tr>
<tr><td><span class="legend">Voting Pin<span style="color:#FF0000;">*</span></span></td><td><input type="password" name="password"  class="desing" required /></td></tr>
</b></tr><tr>
<td height="26"><input type="submit" value="" name="Register" id="SaveBTN"/></td>
<td><input type="reset" value="Reset" name="" id="canselBTN"/></td></tr>
</tr></table></form>

	 </div>
	
  </div>
  <div id="FO__OTer" align="center"> 
 <p>&copy; <?php echo date('Y');?>.All rights reserved, e-voting</p>
        <p>Designed by<a href="#" target="_blank"> <b >Venuste and Angelique</b></a>.</p>
  </div>
</div>
</body>
</html>