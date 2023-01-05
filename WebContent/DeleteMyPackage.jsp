<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete My Package</title>
<link rel = "stylesheet" href = "css/DeleteMyPackage.css">
</head>
<body>

       <div class="header">
			<a href=""><img class="logo" src="images/theLogo.png" alt=""></a>
			<a href=""><img class="profile" src="images/prof.png" alt="sliit.lk"></a>
		</div>

		<div class="topnav">
		  <a class="first" href="Home.jsp">Home</a>
		  <a href="">Contact</a>
		  <a href="www.google.com">News</a>
		  <a href="">About Us</a>
		  <a href="Addpackage.jsp">Add Package</a>
		  <a href="ViewPackage.jsp">View My Package</a>
		</div>
		
       <div class = "hole">
       
       <br><br>
	      <div class = "middle">
	         <br><br>
	                <h2>Delete Your Package</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "DeleteMyPackage">
	                
	                   <label>Package ID</label><br>
	                   <input type = "text" name = "id" value = "<%= request.getParameter("id")%>" readonly><br><br>
	                   
	                   <input type = "submit" name = "submit" value = "Delete" id = "submit"><br><br>
	                </form>
	                
	                <br><br>
	                <h5>Click this for visit your current packages....</h5>
			         <div class = "btn">
			            <a href = "ViewMyPackage.jsp">View My Package</a>
			         </div>
	         <br><br><br><br>
	      </div>
      
       <br><br><br>
        <footer>
			<div class="foot">
				<div class="column">
					<h1 class="col1">Sri Lanka at a Glance</h1>
					<br/>
					<p  class="col1">Sri Lanka, formerly known as Ceylon and officially the Democratic Socialist Republic of Sri Lanka, is an island country in South Asia.
										It lies in the Indian Ocean, southwest of the Bay of Bengal, and southeast of the Arabian Sea;
										it is separated from the Indian subcontinent by the Gulf of Mannar and the Palk Strait.
					</p>
					<br/>
					<h1 class="col1">Plan Your Trip</h1>
					<p class="col1">The palms clasped together and a gentle blow of the head accompanies, “Ayubowan”, Sri Lanka’s gentle gesture of welcome and respect.
									Enjoy your time freely because, We have the perfect tour package for you.</p>
					<br/>
					<a href=""><button id="btn">Plan Your Tour</button></a>
				</div>
				<div class="column"><a href = "https://www.tripadvisor.com/"><img class="tripA" src="images/TA.png" alt="sliit.lk"></a></div>
				<div class="column" id="third"><address>No: 170/8,<br/> “Saru Uyana”,<br/>New Kandy Road,<br/>Malabe,<br/> Sri Lanka.<br/></address><br/>
					<br/><p>Tel: +94 11 754 8561<br/>Mobile: +94 71 823 5478<br/>OR<br/></p>
					<a href="mailto:email@example.com"><h3>E-mail us</h3></a>
					</div>
				</div>
		</footer>
    </div>
</body>
</html>