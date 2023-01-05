<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update My Package Page</title>
<link rel = "stylesheet" href = "css/UpdateMyPackage.css">
<script src = "js/AddPackage.js"></script>
</head>
<body>
<%
String ID = null;
String pname = null;
String hname = null;
String price = null;
String cname = null;
String phone = null;
String non = null;
String noa = null;
String noc = null;
String date = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	String userName = "root";
	String password = "Rambo123";
	String url = "jdbc:mysql://localhost:3306/tourism";
	Connection con = DriverManager.getConnection(url,userName,password);
    Statement stat = con.createStatement();  
	String query = request.getParameter("id");
	String sql;
	if(query!=null)
	{
		
		sql = "select * from tourism.mypackage where idmypackage ="+request.getParameter("id");
		
	}
	else
	{
		sql = "select * from tourism.mypackage";
		
	}
	ResultSet rs = stat.executeQuery(sql);

	
	while(rs.next())
	{
		
		ID = rs.getString(1); 
		pname = rs.getString(2);
		hname = rs.getString(3);
		price = rs.getString(4); 
		cname = rs.getString(5); 
		phone = rs.getString(6); 
		non = rs.getString(7); 
		noa = rs.getString(8); 
		noc = rs.getString(9); 
		date = rs.getString(10); 
	}
	
}
catch(Exception e)
{
	out.println("Exception :"+e.getMessage());
	e.printStackTrace();
}

%>

  
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
	                <h2>Add Your Details for Booking Our Package</h2>
	                <hr>
	                <br>
	                <form method = "post" action = "UpdateMyPackage">
	                   <input type = "text" name = "id" value = "<%= ID%>" hidden>
	                   
	                   <label>Package Name</label><br>
	                   <input type = "text" name = "pname" value = "<%= pname%>" readonly><br><br>
	                   
	                   <label>Hotel Name</label><br>
	                   <input type = "text" name = "hname" value = "<%= hname%>" readonly><br><br>
	                   
	                   <label>Package Price</label><br>
	                   <input type = "number" name = "price" id = "price" value = "<%= price%>" readonly><br><br>
	                   
	                   <label>Your Name</label><br>
	                   <input type = "text" name = "cname" value = "<%= cname%>" required><br><br>
	                   
	                   <label>Contact Number</label><br>
	                   <input type = "number" name = "phone" id = "phone" value = "<%= phone%>" onInput = "checkPhone()" required>
	                   <br><span id = "check_phone"></span><br>
	                   
	                   
	                   <label>Number of Nights</label><br>
	                   <input type = "number" name = "non" id = "non" value = "<%= non%>" onInput = "checkNoN()" required>
	                   <br><span id = "check_non"></span><br>
	                   
	                   <label>Number of Adults</label><br>
	                   <input type = "number" name = "noa" id = "noa" value = "<%= noa%>" onInput = "checkNoA()" required>
	                   <br><span id = "check_noa"></span><br>
	                   
	                   
	                   <label>Number of Child</label><br>
	                   <input type = "number" name = "noc" id = "noc" value = "<%= noc%>" onInput = "checkNoC()" required>
	                   <br><span id = "check_noc"></span><br>
	                   
	                   <label>Booking Date</label><br>
	                   <input type = "date" name = "date" value = "<%= date%>" required><br><br>
	                   
	                   <br><span id = "charge"></span><br><br>
	                   
	                   <input type = "submit" name = "submit" value = "Update" id = "submit"><br><br>
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