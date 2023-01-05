<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Contact</title>
	<link rel="stylesheet" href="css/Style.css" type="text/css">
  </head>
  <body>
  <div class = "bg">
  <h1>Leave your valuable feedback</h1>
  <br/>
  <br/>
  <br/>
    <div class="testbox">       
              
      <form action="sub"method ="post">
      
        <div class="colums">
          <div class="item">
            <label for="uname">Username<span>*</span></label>
            <input id="uname" type="text" name="uname" required/>
          </div>
          <div class="item">
            <label for="name">Name<span>*</span></label>
            <input id="name" type="text" name="name" required/>
          </div>
          <div class="item">
            <label for="eaddress">Email Address<span>*</span></label>
            <input id="eaddress" type="email"   name="eaddress" required/>
            <p id="demo"></p>
          </div>
          <div class="item">
            <label for="country">Country<span>*</span></label>
            <input id="country" type="text"   name="country" required/>
          </div>
          
          <div class="item">
          <label for="visit">Your Feedback</label>
          <textarea name="comment"id="visit" rows="5" cols="50"></textarea>
        </div>
        </div>

        
        <div class="btn-block">
          <button type="submit" onclick="checkValid()">Submit</button>
        </div>
        
      </form>
    </div>
    <script>
function checkValid() {
  const inpObj = document.getElementById("eaddress");
  if (!inpObj.checkValidity()) {
    document.getElementById("demo").innerHTML = "Email format should be 'abc@dfg.com'";
  } else {
    document.getElementById("demo").innerHTML = "";
  } 
} 
</script>
</div>
  </body>
</html>