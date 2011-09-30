<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Psuedo Bank PIB Bank Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="author" content="Tom@Lwis (http://www.lwis.net/free-css-drop-down-menu/)" />
<meta name="keywords" content="css, dropdowns, dropdown menu, drop-down, menu, navigation, nav, horizontal, vertical left-to-right, vertical right-to-left, horizontal linear, horizontal upwards, cross browser, internet explorer, ie, firefox, safari, opera, browser, lwis" />
<meta name="description" content="Simple vertical left-to-right direction css drop-down menu demo using clean, standards-friendly, free, easy, cross browser framework for css drop-down menus" />
<link href="/bankAdmin/asset/secured/helper.css" media="screen" rel="stylesheet" type="text/css" />

<style type="text/css">

/* Layout */
@import "/bankAdmin/asset/secured/dropdown.css";
@import "/bankAdmin/asset/secured/dropdown.vertical.css";

/* Theme */
@import "/bankAdmin/asset/secured/default.css";

</style>


</head>
<body>
<div id="wrap">  <!-- This wrap div needs to encompass everything except the footer div at bottom -->
<h1>Welcome to Psuedo Bank PIB Bank Admin</h1>

<ul id="nav" class="dropdown dropdown-vertical">
    <li><a href="#">Home</a></li>
    <li class="dir">Accounts
        <ul>
            <li><a href="/bankAdmin/AccountCreation">Accounts Creation</a></li>
            <li><a href="#">Accounts Enquiry</a></li>
                <ul>
                    <li><a href="./">1</a></li>
                    <li><a href="./">2</a></li>
                    <li><a href="./">3</a></li>
                    <li><a href="./">4</a></li>
                    <li><a href="./">5</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="dir">A
        <ul>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
        </ul>
    </li>
    <li class="dir">C
        <ul>
            <li><a href="./">1</a></li>  
            <li><a href="./">2</a></li>
            <li><a href="./">3</a></li>
        </ul>
    </li>
    <li class="dir">D</a>
        <ul>
            <li><a href="./">1</a></li>
        </ul>
    </li>
</ul>
	<div id="main">
	Account Creation 2
	<br></br>
		<table style="text-align: center; width: 80%;" border="1" cellpadding="2" cellspacing="2">
		<tbody>
			<tr>
			<td>Name </td><td> <%=request.getAttribute("custName")%>   </td>			
			</tr>
			<tr>
			<td>Address </td><td> <%=request.getAttribute("custAddress")%>  </td>			
			</tr>
			<tr>
			<td>Mobile </td><td> <%=request.getAttribute("custMobile")%>   </td>			
			</tr>
			<tr>
			<td>Home Telephone </td><td> <%=request.getAttribute("custHome")%>   </td>			
			</tr>
			<tr>
			<td>IC Number </td><td> <%=request.getAttribute("custIcNumber")%>   </td>			
			</tr>
			<tr>
			<td>Account Number </td><td> <%=request.getAttribute("accountNumber")%>   </td>			
			</tr>
			<tr>
			<td>Deposit Amount SGD</td><td> <%=request.getAttribute("deposit")%>   </td>			
			</tr>
			<tr>
			<td>PIB ID </td><td> <%=request.getAttribute("custIdPib")%>   </td>			
			</tr>
		</tbody>
		</table>

	</div>

</div>

<div class="footer">
	<div id="foot"> <!-- this extra div is just centering the fixed width area of the footer content -->

    <p>Copyright &copy; 2011 Pseudo Bank. All rights reserved.</p>
    </div>
</div>

</body>


</html>