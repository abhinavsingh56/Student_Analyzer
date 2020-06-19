<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="background-color:skyblue">

<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");



%>

	
	
	
<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#news">Add faculty</a>
  <a href="#contact"> Update Faculty </a>
  <a href="#about">Delete Faculty</a>
   <a href="#about">Update Events</a>
    <a href="viewfeedback.jsp">Fetch Contact form </a>
     <a href="#about">Fetch antirag form form </a>
  
  <button form="form" type="submit" id=btn>logout</button>
</div>

<div style="padding-left:16px">
  <h2>Welcome to Admin Pannel how are you today  here is somethine for you</h2>
 <p>Card row height is determined by the either the height of the image or text.  Whichever is greater. Mobile defaults to responsive IMG. Images are cropped to parent container using object-fit:cover. You can assign explicit heights to images or manually size images for more control.  Most images used in this demo are 1040 x 690.</p>
</div>




<form id="form" action="logoutadmin" method=""></form>


<a href="mainfaculty.jsp">go to rest features</a>



























<style>
#btn {
  background-color:red; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: orangered;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 10px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: red;
  color: white;
}
</style>

</body>
</html>
