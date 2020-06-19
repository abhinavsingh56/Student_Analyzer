<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: skyblue">
<h1 align="center">Fill up your Antiragging Form here</h1>
<div id="anf">
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>


<div class="container">
    <form action="antirag" method="get">
    <div class="row">
      <div class="col-25">
        <label for="fname"> Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="name" placeholder="Your name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Father's Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="fathersname" placeholder="Your fathers name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="country">Gender</label>
      </div>
      <div class="col-75">
        <select id="country" name="gender">
          <option value="male">Male</option>
          <option value="female">Female</option>
          <option value="others">Others</option>
        </select>
      </div>
    </div>
     <div class="row">
      <div class="col-25">
        <label for="fname">Nationality</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="nationality" placeholder="nationality">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Contact No</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="contactno" placeholder="contact no">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Email</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="email" placeholder="email">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="address" placeholder="address">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">City</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="city" placeholder="city">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">State</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="state" placeholder="state">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">College Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="collegename" placeholder="college name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">University Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="universityname" placeholder="university name">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="fname">College Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="caddress" placeholder="college address">
      </div>
    </div>

      <div class="row">
      <div class="col-25">
        <label for="fname">Directors Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="directiorsname" placeholder="directors name">
      </div>
    </div>

  <div class="row">
      <div class="col-25">
        <label for="fname">Contact no</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="cno" placeholder="contact no">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="fname">Branch</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="branch" placeholder="branch">
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="fname">Nearest Police Station</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="nearestpolicestation" placeholder="nearest police station">
      </div>
    </div>

   

   

   
      
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

</style>
</body>
</html>