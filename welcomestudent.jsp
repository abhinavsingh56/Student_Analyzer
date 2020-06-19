<!DOCTYPE html>
<html>
<head>
  
    <script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js">
      </script>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="background-color: skyblue">

	<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

if(session.getAttribute("name")==null)
{
    
    response.sendRedirect("slogin.jsp");
}



%>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="mst.html">Mid Sem Result</a>
  <a href="tuto.jsp">Tutorial Result </a>
  <a href="attendence.html">attendence</a>
  <a href="upload.html">Upload </a>
  <button form="form" type="submit" id=btn value="logout">logout</button>
</div>

<div style="padding-left:16px">
    
   
    
    
    
    
    
    
  
  
    
    
    
    
    
    
    
    
    
    
    <h2>Welcome to Student Dashboard   logged in as  <h2> <i><%=session.getAttribute("name")%></i></h2>    How are you today here is something for you</h2>
 </div>

 <h1>this is your improvement report</h1>

<form id="form" action="logoutstudent"></form>

<form id="form2" action="attendenceview.jsp"></form>

 

  
  
     
      <script type = "text/javascript">
         google.charts.load('current', {packages: ['corechart']});     
      </script>
   </head>
   
   <body>
      <div id = "container" style = "width: 550px; height: 400px; margin: 0 auto">
      </div>
      <script language = "JavaScript">
         function drawChart() {
            // Define the chart to be drawn.
            var data = google.visualization.arrayToDataTable([
               ['sessions', 'improvment'],
               ['session 1',  <%=session.getAttribute("s1")%>],
               ['session 2',   <%=session.getAttribute("s2")%>],
               ['session 3', <%=session.getAttribute("s3")%>],
               ['session 4',   <%=session.getAttribute("s4")%>],
               ['session 5',   <%=session.getAttribute("s5")%>]
            ]);

            var options = {title: 'improvement of student'}; 

            // Instantiate and draw the chart.
            var chart = new google.visualization.BarChart(document.getElementById('container'));
            chart.draw(data, options);
         }
         google.charts.setOnLoadCallback(drawChart);
      </script>
   </body>
</html>



















<style>
#btn {
  background-color: red; 
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
  background-color:blue;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
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
