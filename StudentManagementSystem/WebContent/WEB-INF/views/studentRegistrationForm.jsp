<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>
<style>
*,
*:before,
*:after {
   box-sizing: border-box;
}
form {
  border: 1px solid #c6c7cc;
  border-radius: 5px;
  font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
  overflow: hidden;
  width: 40%;
}
fieldset {
  border: 0;
  margin: 0;
  padding: 0;
}
input {
  border-radius: 5px;
  font: 14px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin: 0;
}
.account-info {
  padding: 20px 20px 0 20px;
}
.account-info label {
  color: #395870;
  /*display: block;*/
  font-weight: bold;
  margin-bottom: 20px;
  padding: 6px;
}
.account-info input {
  background: #fff;
  border: 1px solid #c6c7cc;
   box-shadow: inset 0 1px 1px rgba(0, 0, 0, .1);
  color: #636466;
  padding: 6px;
 /* margin-top: 6px;*/
  width: 100%;
}
.account-action {
  background: #f0f0f2;
  border-top: 1px solid #c6c7cc;
  padding: 20px;
}
.account-action .submit-btn {
  background: linear-gradient(#49708f, #293f50);
  border: 0;
  color: #fff;
  cursor: pointer;
  font-weight: bold;
  /*float: left;*/
  width: 40%;
  padding: 8px 16px;
  font-size: 20px;
}
.account-action .clear-btn {
  background: linear-gradient(#49708f, #293f50);
  border: 0;
  color: #fff;
  cursor: pointer;
  font-weight: bold;
  /*float: right;*/
  width: 40%;
  padding: 8px 16px;
  font-size: 20px;
}
.account-action .label {
  background: linear-gradient(#49708f, #293f50);
  border: 0;
  color: #fff;
  cursor: pointer;
  font-weight: bold;
  float: right;
  padding: 8px 16px;
}
/*below styles added by sandeep*/
h1{
  font: 30px/1.4 "Helvetica Neue", Helvetica, Arial, sans-serif;
  margin-top: 20px;
  margin-bottom: 20px;
}
.each-row {
  padding: 10px; 
  /*background-color: yellow;*/
  width: 100%;
}
* {
      margin: 0px;
    }
    .form-row-label-input { 
      /*background-color: yellow;*/
      height: 50px;
      text-align: center;
      padding: 10px;
    }
    .form-row-label {
      /*background-color: red;*/
      text-align: center;
      width: 40%;
      float: left;
      margin: 6px 0px;
    }
    .form-row-input {
      /*background-color: grey;*/
      text-align: center;
      width: 60%;
      float: right;
    }
</style>
</head>
<body>
<div align="center">
  <h1>Student Registration Form</h1>
<form action="student/registerStudent" method="post">
  <fieldset class="account-info">
    <div class="form-row-label-input">
      <div class="form-row-label"><label>First Name</label></div>
	    <div class="form-row-input"><input type="text" name="firstName"/></div>
    </div>
   <div class="form-row-label-input">
	     <div class="form-row-label"><label>Last Name</label></div>
       <div class="form-row-input"><input type="text" name="lastName"></div>
  </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Contact Number</label></div>
      <div class="form-row-input"><input type="tel" name="contactNumber"></div>
  </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Email-Id</label></div>
      <div class="form-row-input"><input type="email" name="emailId"></div>
  </div> 
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>State</label></div>
      <div class="form-row-input"><input type="text" name="state"></div>
  </div>
   <div class="form-row-label-input">
    	 <div class="form-row-label"><label>City</label></div>
       <div class="form-row-input"><input type="text" name="city"></div>
  </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Country</label></div>
      <div class="form-row-input"><input type="text" name="country"></div>
  </div>
  <div class="form-row-label-input"> 
	    <div class="form-row-label"><label>Zipcode</label></div>
      <div class="form-row-input"><input type="number" name="zipcode"></div>
  </div>
   <div class="form-row-label-input">
	    <div class="form-row-label"><label>Date-Of-Birth</label></div>
      <div class="form-row-input"><input type="date" name="dateOfBirth"></div>
  </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Course</label></div>
     <div class="form-row-input"><input type="text" name="course"></div>
  </div>
  <br>
    
  </fieldset>
  <fieldset class="account-action">
    <input class="submit-btn" type="submit" value="Register Student">
    <input class="clear-btn" style="background: grey;" type="reset" value="Clear">
  </fieldset>
</form>
</div>
</body>
</html>