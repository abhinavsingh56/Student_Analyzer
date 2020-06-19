<!DOCTYPE HTML>
<html>
<head>
  <script type="text/javascript">
   function drawChart () {
    confidence = parseInt(document.getElementById('con').value);
       verbal = parseInt(document.getElementById('verbal').value);
       knowldge = parseInt(document.getElementById('knowldge').value);
       bodylanguage = parseInt(document.getElementById('bodylanguage').value);
       tone = parseInt(document.getElementById('tone').value);
       
    var chart = new CanvasJS.Chart("chartContainer", {
      
      title:{
        text: "Speaker Parameters"              
      },
      data: [{ type: "column",
         dataPoints: [
         { label: "confidence", y:confidence },
         { label: "verbal Ability", y:verbal },
         { label: "knowldge", y: knowldge },                                    
         { label: "body language", y: bodylanguage },
         { label: "tone", y: tone }
         ]
       }
       ]
     });

    chart.render();
  }
  </script>
  <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>
<body>
  <div id="chartContainer" style="height: 300px; width: 100%;">
  </div>
   <form id="form1" onsubmit="drawChart(); return false" >
    <table>
     <tr><td>confidence</td><td><input type="text" id="con"></td></tr>
     <tr><td> verbal</td><td><input type="text"  id="verbal"></td></tr>
      <tr><td>knowldge</td><td><input type="text"  id="knowldge"></td></tr>
      <tr><td>bodylanguage</td><td> <input type="text" id="bodylanguage"></td></tr>
      <tr><td>tone</td><td><input type="text"  id="tone"></td></tr>
    </table> 
         
     <button type="submit" value="Submit">Submit</button>
     </form>
 
</body>
</html>