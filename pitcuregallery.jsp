<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div class="name"><a href="sdbct.ac.in"> <img src="sdbct.png"  height="80px" width="200px"></a>
	</div>
<div class="container">
	<div class="gallery">
		<img src="trio.png" alt="" width="100%" height="auto" class="gallery-img" />

		<img src="s1.jpg" alt="" width="100%" height="auto" class="gallery-img" />		
		<img src="s2.jpg" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="s3.jpg" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="s5.jpg" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="s6.jpg" alt="" width="100%" height="auto" class="gallery-img" />

		<img src="s4.jpg" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="s10.jpg" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="s11.jpg" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="s9.jpg" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="s8.jpg" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="" alt="" width="100%" height="auto" class="gallery-img" />
	</div> 
</div>

<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      </div>
    </div>
  </div>
</div>
<style type="text/css">.gallery { 
    -webkit-column-count: 3;
    -moz-column-count: 3;
    column-count: 3;
    -webkit-column-gap: 10px;
    -moz-column-gap: 10px;
    column-gap: 10px;
    margin-top: 10px;
    overflow: hidden;
}

.gallery img { 
    width: 100%; 
    height: auto;
    transition: 500ms;
    margin-bottom: 10px;
    opacity: 0.8;
    page-break-inside: avoid; /* For Firefox. */
    -webkit-column-break-inside: avoid; /* For Chrome & friends. */
    break-inside: avoid; /* For standard browsers like IE. :-) */
}

.gallery img:hover {
    opacity: 1;
}

/* .modal {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: center;
} */

.modal-img,.model-vid{
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  display: table
}
.modal-body{
  padding: 0px;
}

.modal-dialog {
  height: 100%;
      position: relative;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
}

.modal-content {
  border: none;
}

@media screen and (max-width: 767px) {
	.gallery { 
        -webkit-column-count: 2;
        -moz-column-count: 2;
        column-count: 2;
    }
	.gallery div { margin: 0; 
        width: 200px;
    }
  .modal-dialog {
        margin: 0 5vw;
    }
}

@media screen and (max-width: 479px) {
    .gallery { 
        -webkit-column-count: 1;
        -moz-column-count: 1;
        column-count: 1;
    }
    .gallery div { 
        margin: 0; 
        width: 200px;
    }
}</style>
<script type="text/javascript">$(document).ready(function () {
  $(".gallery-img").click(function(){
    var t = $(this).attr("src");
    $(".modal-body").html("<img src='"+t+"' class='modal-img'>");
    $("#myModal").modal();
  });
});</script>
</body>
</html>