<!DOCTYPE html>
<html>
<head>
	<title></title>

</head>
<body style="background-color: #97f7f1;">
	<style type="text/css">
		.name{
			margin-bottom: 430px;
	</style>
	<div class="name"><a href="sdbct.ac.in"> <img src="http://sdbc.ac.in/wp-content/uploads/2018/11/SDBC-LOGO.png"  height="80px" width="200px" ></a>
	</div>
  <div class="modal-wrapper">
    <div class="login-wrapper">
      <div class="collapsed-section hidden">
        <div class="hide-section">
          <h2 class="collapsed-heading">Have an Account?</h2>
          <p class="collapsed-text">
            <button class="collapsed-btn" onclick="toggleOpen()">Log In</button>
        </div>
      </div>
      <div class="form-wrapper login">
        <h2 class="form-heading">Log In As Student</h2>
        
        <form action="loginsl" class="form login" method="post">
         
          <div class="input-field">
            <i class="fas fa-envelope"></i>
            <input type="text" placeholder="email" name="email" oninvalid="alert('You must fill out the form!');">
          </div>
          <div class="input-field">
            <i class="fas fa-key"></i>
            <input type="password" placeholder="Password" name="password" oninvalid="alert('You must fill out the form!');">
          </div>
          <a href="#" id="forgot-password">Forgot Your Password?</a>
          <button class="form-btn" type="submit">Log In</button>
        </form>
      </div>
    </div>
    <div class="signup-wrapper">
      <div class="collapsed-section">
        <div class="hide-section">
          <h2 class="collapsed-heading">New To SDBCT Library?</h2>
          
            <button class="collapsed-btn" onclick="toggleOpen()">Sign Up</button>
        </div>
      </div>
      <div class="form-wrapper signup hidden">
        <h2 class="form-heading">Create Account</h2>
        <form action="contactform" class="form login" method="post">
         
          <div class="input-field">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Name" name="name">
          </div>
          <div class="input-field">
            <i class="fas fa-envelope"></i>
            <input type="email" placeholder="Email" name="email">
          </div>
          <div class="input-field">
            <i class="fas fa-key"></i>
            <input type="password" placeholder="Password" name="password">
          </div>
          <div class="input-field">
            <i class="fas fa-key"></i>
            <input type="text" placeholder="enrollement no" name="enrollementno">
          </div>

          <button class="form-btn" type="submit">Sign Up</button>
        </form>
      </div>
    </div>
  </div>
  
  <style type="text/css">body {
	font-family: 'Cairo', sans-serif;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	left: 0;
	background-color: ##1905f7;
	background-attachment: fixed;
	background-size: contain;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
}

.modal-wrapper {
	margin-left: -200px;
	position: relative;
	width: 80vw;
	/* max-width: 400px; */
	height: 90vh;
	display: flex;
	flex-flow: column wrap;
	background-color: #ffffff;
	color: #2b2d42;
	overflow: hidden;
	/* box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.75); */
	/* border-radius: 1rem; */
}

.login-wrapper,
.signup-wrapper {
	width: 100%;
	/* display: flex;
	align-items: center;
	justify-content: flex-start;
	flex-flow: column wrap; */
}

.form-wrapper {
	height: 100%;
	display: flex;
	flex-flow: column wrap;
	align-items: center;
	justify-content: center;
	position: relative;
	z-index: 1;
}

.form-heading {
	margin: 3vh auto 1vh auto;
}

.other-icons {
	margin-bottom: 2vh;
	display: flex;
	flex-flow: row nowrap;
	justify-content: center;
	align-items: center;
}

.other-icons a {
	text-decoration: none;
}

.other-icons .fab {
	font-size: 20px;
	margin: auto 1rem;
	color: #3c8ce7;
}

.form {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-flow: column wrap;
}

.form span {
	font-size: 12px;
	color: #b8bacf;
}

.form .input-field {
	position: relative;
	min-width: 200px;
	width: 70%;
	max-width: 300px;
}

.form .input-field i {
	position: absolute;
	font-size: 16px;
	color: #3c8ce7;
	top: 16px;
	left: 10px;
}

.form input {
	font-size: 12px;
	padding: 10px 10px 10px 40px;
	background-color: #e8ebe4;
	outline: none;
	border: none;
	border-bottom: 2px solid #b8bacf;
	width: 100%;
	box-sizing: border-box;
}

.form input:focus {
	background-color: #d2d5dd;
}

.form input {
	margin: 1vh auto;
}

.form input[type='password'] {
	margin-bottom: 2vh;
}

#forgot-password {
	font-size: 12px;
	text-decoration: none;
	color: #b8bacf;
	position: relative;
}

#forgot-password::after {
	display: block;
	position: absolute;
	left: 10%;
	right: 10%;
	bottom: 1px;
	border-bottom: 1px solid #3c8ce7;
	content: '';
}

.form-btn {
	margin: 2vh auto;
	background-image: linear-gradient(135deg, #1a0be3 10%,#1605ff 100%);
	color: white;
	border: 1px solid white;
	outline: none;
	border-radius: 20px;
	padding: 10px 40px;
	transition: all ease-in-out 0.2s;
	cursor: pointer;
}

.form-btn:hover {
	border: 1px solid #1605ff;
	color: #3c8ce7;
	background: transparent;
}

/* .signup-wrapper .collapsed-section {
	border-radius: 0 0 1rem 1rem;
}

.login-wrapper .collapsed-section {
	border-radius: 1rem 1rem 0 0;
} */

.collapsed-section {
	width: 100%;
	height: 100%;
	background-image: linear-gradient(135deg, #fa0202 10%, #fa1b1b 100%);
	position: relative;
	z-index: 2;
}

.hide-section {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-flow: column wrap;
	color: white;
}

.collapsed-heading {
	margin: 0;
}

.collapsed-text {
	font-size: 12px;
	margin: 0;
	margin-bottom: 1vh;
	margin-top: -10px;
	letter-spacing: 1px;
}

.collapsed-btn {
	background: transparent;
	color: white;
	border: 1px solid white;
	font-weight: bold;
	outline: none;
	border-radius: 20px;
	padding: 10px 40px;
	transition: all ease-in-out 0.5s;
	cursor: pointer;
}

.collapsed-btn:hover {
	background-color: white;
	color: #3c8ce7;
	border: 1px solid white;
}

.hidden {
	display: none;
}

@media screen and (min-width: 500px) {
	.modal-wrapper {
		width: 70%;
	}
}

@media screen and (min-width: 800px) {
	.modal-wrapper {
		width: 80%;
		height: 70vh;
		flex-flow: row nowrap;
	}
	.collapsed-text {
		font-size: 16px;
		margin: 1rem;
	}
}

@media screen and (min-width: 1000px) {
	.modal-wrapper {
		width: 70%;
	}
}

@media screen and (min-width: 1200px) {
	.modal-wrapper {
		width: 60%;
	}
}

@keyframes moveCollapsedUp {
	0% {
		height: 100%;
		transform: translateY(0);
	}
	50% {
		height: 200%;
		transform: translateY(-83.33%);
	}
	100% {
		height: 100%;
		transform: translateY(-233.33%);
	}
}

@keyframes moveCollapsedDown {
	0% {
		height: 100%;
		transform: translateY(0);
	}
	50% {
		height: 200%;
		transform: translateY(33.33%);
	}
	100% {
		height: 100%;
		transform: translateY(233.33%);
	}
}

@keyframes moveFormUp {
	0% {
		transform: translateY(0);
	}
	100% {
		transform: translateY(-42.85%);
	}
}

@keyframes moveFormDown {
	0% {
		transform: translateY(0);
	}
	100% {
		transform: translateY(42.85%);
	}
}

@keyframes moveLeft {
	0% {
		width: 100%;
		transform: translateX(0%);
	}
	50% {
		width: 150%;
		transform: translateX(-50%);
	}
	100% {
		width: 100%;
		transform: translateX(-100%);
	}
}

@keyframes moveRight {
	0% {
		width: 100%;
		transform: translateX(0%);
	}
	50% {
		width: 150%;
		transform: translateX(16.66%);
	}
	100% {
		width: 100%;
		transform: translateX(100%);
	}
}

@keyframes fade {
	0% {
		opacity: 1;
	}
	50% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
</style>
<script type="text/javascript">    //DIVS to toggle
    var loginForm = document.querySelector(".login-wrapper").querySelector(".form-wrapper");
    var loginCollapsed = document.querySelector(".login-wrapper").querySelector(".collapsed-section");
    var signupForm = document.querySelector(".signup-wrapper").querySelector(".form-wrapper");
    var signupCollapsed = document.querySelector(".signup-wrapper").querySelector(".collapsed-section");
    var loginHide = loginCollapsed.querySelector(".hide-section");
    var signupHide = signupCollapsed.querySelector(".hide-section");

    var loginOpen = true;
    var animationDuration = 1000;
    function toggleOpen() {
      loginOpen = !loginOpen;

      //Animation
      if (window.matchMedia("(max-width: 799px)").matches) {
        //MOBILE
        if (!loginOpen) {
          signupCollapsed.style.animation = `moveCollapsedUp ${animationDuration}ms ease-in-out 0s`;
          signupHide.style.animation = `fade ${animationDuration}ms ease-in-out 0s`;
          loginForm.style.animation = `moveFormDown ${animationDuration}ms ease-in-out 0s, fade ${animationDuration}ms ease-in-out 0s`;
        }
        else {
          loginCollapsed.style.animation = `moveCollapsedDown ${animationDuration}ms ease-in-out 0s`;
          loginHide.style.animation = `fade ${animationDuration}ms ease-in-out 0s`;
          signupForm.style.animation = `moveFormUp ${animationDuration}ms ease-in-out 0s, fade ${animationDuration}ms ease-in-out 0s`;
        }
      }
      else {
        //DESKTOP
        if (!loginOpen) {
          signupCollapsed.style.animation = `moveLeft ${animationDuration}ms ease-in-out 0s`;
          signupHide.style.animation = `fade ${animationDuration}ms ease-in-out 0s`;
          loginForm.style.animation = `moveRight ${animationDuration}ms ease-in-out 0s, fade ${animationDuration}ms ease-in-out 0s`;
        }
        else {
          loginCollapsed.style.animation = `moveRight ${animationDuration}ms ease-in-out 0s`;
          loginHide.style.animation = `fade ${animationDuration}ms ease-in-out 0s`;
          signupForm.style.animation = `moveLeft ${animationDuration}ms ease-in-out 0s, fade ${animationDuration}ms ease-in-out 0s`;
        }
      }

      setTimeout(makeChanges, animationDuration);

    }

    function makeChanges() {
      //CHANGE VISIBILITY OF ALL ELEMENTS
      loginForm.classList.toggle("hidden");
      loginCollapsed.classList.toggle("hidden");
      signupForm.classList.toggle("hidden");
      signupCollapsed.classList.toggle("hidden");
      changeOrientation();

      //Remove Aniamtions
      signupCollapsed.style.animation = "none";
      signupForm.style.animation = "none";
      signupHide.style.animation = "none";
      loginCollapsed.style.animation = "none";
      loginHide.style.animation = "none";
      loginForm.style.animation = "none";
    }

    function changeOrientation() {
      if (window.matchMedia("(max-width: 799px)").matches) {
        if (loginOpen) {
          document.querySelector(".login-wrapper").style.height = "70%";
          document.querySelector(".signup-wrapper").style.height = "30%";
        }
        else {
          document.querySelector(".login-wrapper").style.height = "30%";
          document.querySelector(".signup-wrapper").style.height = "70%";
        }
      }
      else {
          document.querySelector(".login-wrapper").style.height = "100%";
          document.querySelector(".signup-wrapper").style.height = "100%";
      }
    }

    window.addEventListener("resize", changeOrientation);
    changeOrientation();
</script>
</body>
</html>