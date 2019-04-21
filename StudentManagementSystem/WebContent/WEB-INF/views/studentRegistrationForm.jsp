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
      /* max-height:100px; */
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
    .form-row-error-outer { 
      /*background-color: yellow;*/
      height: 50px;
      /* max-height:100px; */
      text-align: center;
      padding: 10px;
      display:none;
    }
    .form-row-error {
      /*background-color: grey;*/
      text-align: center;
      width: 100%;
       height: 50px;
      /* float: right; */
    }
    
</style>
</head>
<body>
<div align="center">
  <h1>Student Registration Form</h1>
<form name="studentRegForm" action="student/registerStudent" method="post" onsubmit="return validateStudentRegForm()">
  <fieldset class="account-info">
    <div class="form-row-label-input">
      <div class="form-row-label"><label>First Name</label><span style="color: red;">&nbsp;*</span></div>
	    <div class="form-row-input"><input type="text" name="firstName" onChange="validateFirstName();"/></div>
    </div>
    <div class="form-row-error-outer" id="firstNameErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="firstNameErrorMsg"></span></div>
    </div>
   <div class="form-row-label-input">
	     <div class="form-row-label"><label>Last Name</label></div>
       <div class="form-row-input"><input type="text" name="lastName" onChange="validateLastName();" /></div>
  </div>
  <div class="form-row-error-outer" id="lastNameErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="lastNameErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Contact Number</label><span style="color: red;">&nbsp;*</span></div>
      <div class="form-row-input"><input type="tel" name="contactNumber" onChange="validateContactNumber();"/></div>
  </div>
   <div class="form-row-error-outer" id="contactNumberErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="contactNumberErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Email-Id</label></div>
      <div class="form-row-input"><input type="text" name="emailId" onChange="validateEmailId();"/></div>
  </div> 
  <div class="form-row-error-outer" id="emailIdErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="emailIdErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>State</label></div>
      <div class="form-row-input"><input type="text" name="state" onChange="validateState();"></div>
  </div>
  <div class="form-row-error-outer" id="stateErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="stateErrorMsg"></span></div>
    </div>
   <div class="form-row-label-input">
    	 <div class="form-row-label"><label>City</label></div>
       <div class="form-row-input"><input type="text" name="city" onChange="validateCity();"></div>
  </div>
  <div class="form-row-error-outer" id="cityErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="cityErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Country</label><span style="color: red;">&nbsp;*</span></div>
      <div class="form-row-input"><input type="text" name="country" onChange="validateCountry();"></div>
  </div>
  <div class="form-row-error-outer" id="countryErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="countryErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input"> 
	    <div class="form-row-label"><label>Zipcode</label></div>
      <div class="form-row-input"><input type="number" name="zipcode" onChange="validateZipcode();"></div>
  </div>
  <div class="form-row-error-outer" id="zipcodeErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="zipcodeErrorMsg"></span></div>
    </div>
   <div class="form-row-label-input">
	    <div class="form-row-label"><label>Date-Of-Birth</label><span style="color: red;">&nbsp;*</span></div>
      <div class="form-row-input"><input type="date" name="dateOfBirth"></div>
  </div>
  <div class="form-row-error-outer" id="dateOfBirthErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="dateOfBirthErrorMsg"></span></div>
    </div>
  <div class="form-row-label-input">
	    <div class="form-row-label"><label>Course</label><span style="color: red;">&nbsp;*</span></div>
     <div class="form-row-input"><select name="course" id="courseDropDown"  onChange="validateCourse();" >
     <option value="default" selected>Choose your Desired Course</option>
     <option value="BTech">BTech</option>
     <option value="MTech">MTech</option>
     <option value="MBA">MBA</option>
     <option value="MCA">MCA</option>
     </select></div>
  </div>
  <div class="form-row-error-outer" id="courseErrorMsgOuter">
    <div class="form-row-error"><span style="color: red;" id="courseErrorMsg"></span></div>
    </div>
  <br>
    
  </fieldset>
  <fieldset class="account-action">
    <input class="submit-btn" type="submit" value="Register Student">
    <input class="clear-btn" style="background: grey;" type="reset" value="Clear">
  </fieldset>
</form>
</div>
<script type="text/javascript">
	function validateStudentRegForm() {
		
		if(!validateFirstName()){
			return false;
		}else if(!validateLastName()){
			return false;
		}else if(!validateContactNumber()){
			return false;
		}else if(!validateEmailId()){
			return false;
		}else if(!validateState()){
			return false;
		}else if(!validateCity()){
			return false;
		}else if(!validateCountry()){
			return false;
		}else if(!validateZipcode()){
			return false;
		}else if(!validateDateOfBirth()){
			return false;
		}else if(!validateCourse()){
			return false;
		}
		//if all fields are valid
		
		return true;
	}
	function validateFirstName(){
		//firstname validation - is blank/empty
		var firstName = document.studentRegForm.firstName.value;
		var firstNameRegExp = /^[a-z A-Z]*$/;
		if(firstName == ""){
			/* alert("First Name cannot be Empty!"); */
			document.getElementById("firstNameErrorMsgOuter").style.display="block";
			document.getElementById("firstNameErrorMsg").innerHTML="First Name cannot be Empty!";
			document.studentRegForm.firstName.focus();
			return false;
		}else if(!firstNameRegExp.test(firstName)){
			//verify if first name pattern matches input firstname 
			/* alert("First Name can contain only Alphabets!"); */
			document.getElementById("firstNameErrorMsgOuter").style.display="block";
			document.getElementById("firstNameErrorMsg").innerHTML="First Name can contain only Alphabets!";
			document.studentRegForm.firstName.focus();
			return false;
		}else{
			document.getElementById("firstNameErrorMsg").innerHTML="";
			document.getElementById("firstNameErrorMsgOuter").style.display="none";
			return true;
		}
	}
	function validateLastName(){
	//lastname validation
	var lastName=document.studentRegForm.lastName.value;
	var lastNameRegExp=/^[a-z A-Z]*$/;
	if(!lastNameRegExp.test(lastName)){
		document.getElementById("lastNameErrorMsgOuter").style.display="block";
		document.getElementById("lastNameErrorMsg").innerHTML="Last Name can contain only Alphabets!";
		document.studentRegForm.lastName.focus();
		return false;
	}else{
		document.getElementById("lastNameErrorMsg").innerHTML="";
		document.getElementById("lastNameErrorMsgOuter").style.display="none";
		return true;
	}
	
	}
	function validateContactNumber(){
		//contact number validation
		var contactNum = document.studentRegForm.contactNumber.value;
		var contactNumRegExp=/^[6-9]{1}[0-9]{9}$/;
		if(contactNum == ""){
			/* alert("Contact Number cannot be Empty!");  */
			document.getElementById("contactNumberErrorMsgOuter").style.display="block";
			document.getElementById("contactNumberErrorMsg").innerHTML="Contact Number cannot be Empty!";
			document.studentRegForm.contactNumber.focus();
			return false;
		}else if(!contactNumRegExp.test(contactNum)){
			/* alert("Please enter a valid contact number");  */
		    document.getElementById("contactNumberErrorMsgOuter").style.display="block";
			document.getElementById("contactNumberErrorMsg").innerHTML="Please enter a valid contact number!";
			document.studentRegForm.contactNumber.focus();
			return false;
		}else{
			document.getElementById("contactNumberErrorMsg").innerHTML="";
			document.getElementById("contactNumberErrorMsgOuter").style.display="none";
			return true;
		}
		 
	}
	function validateEmailId(){
		//validation for email
		var emailID=document.studentRegForm.emailId.value;
		var emailIDRegExp=/^[a-zA-Z0-9._]{3,30}@[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
		if(emailID == ""){
			/* alert("EmailId cannot be Empty!"); */
			document.getElementById("emailIdErrorMsgOuter").style.display="block";
			document.getElementById("emailIdErrorMsg").innerHTML="EmailId cannot be Empty!";
			document.studentRegForm.emailId.focus();
			return false;
		}else if(!emailIDRegExp.test(emailID)){
			/* alert("Please enter a valid email id"); */
			document.getElementById("emailIdErrorMsgOuter").style.display="block";
			document.getElementById("emailIdErrorMsg").innerHTML="Please enter a valid email id";
			document.studentRegForm.emailId.focus();
			return false;
		}else{
			document.getElementById("emailIdErrorMsg").innerHTML="";
			document.getElementById("emailIdErrorMsgOuter").style.display="none";
			return true;
		}
	} 
	function validateState(){
		//validation for state
		var stateName = document.studentRegForm.state.value;
		var stateNameRegExp=/^[a-z A-Z]+$/;
		if(stateName==""){
			document.getElementById("stateErrorMsgOuter").style.display="block";
			document.getElementById("stateErrorMsg").innerHTML="State Name cannot be Empty!";
			document.studentRegForm.state.focus();
		}else if(!stateNameRegExp.test(stateName)){
			/* alert("State Name can not be  Empty! should contain alphabets only!"); */
			document.getElementById("stateErrorMsgOuter").style.display="block";
			document.getElementById("stateErrorMsg").innerHTML="State Name should contain alphabets only!";
			document.studentRegForm.state.focus();
			return false;
		}else{
			document.getElementById("stateErrorMsg").innerHTML="";
			document.getElementById("stateErrorMsgOuter").style.display="none";
			return true;
		}
	}
	function validateCity(){
		//city validation
		var cityName = document.studentRegForm.city.value;
		var cityNameRegExp=/^[a-z A-Z]*$/;
		if(cityName==""){
			document.getElementById("cityErrorMsgOuter").style.display="block";
			document.getElementById("cityErrorMsg").innerHTML="City Name can not be  Empty!";
			document.studentRegForm.city.focus();	
			return false;
		}
		else if(!cityNameRegExp.test(cityName)){
			/* alert("city Name can not be  Empty! should contain alphabets only!"); */
			document.getElementById("cityErrorMsgOuter").style.display="block";
			document.getElementById("cityErrorMsg").innerHTML="City Name should contain alphabets only!";
			document.studentRegForm.city.focus();
			return false;
		}else{
			document.getElementById("cityErrorMsg").innerHTML="";
			document.getElementById("cityErrorMsgOuter").style.display="none";
			return true;
		}
	}
	function validateCountry(){
		//country validation
		var country = document.studentRegForm.country.value;
		var countryRegExp=/^[a-z A-Z]*$/;
		if(country == ""){
			/* alert("Country cannot be Empty!"); */
			document.getElementById("countryErrorMsgOuter").style.display="block";
			document.getElementById("countryErrorMsg").innerHTML="Country Name can not be  Empty!";
			document.studentRegForm.country.focus();
			return false;
		}else if(!countryRegExp.test(country)){
			document.getElementById("countryErrorMsgOuter").style.display="block";
			document.getElementById("countryErrorMsg").innerHTML="Invalid Country Name Only Alphabets are allowed!";
			document.studentRegForm.country.focus();
		}else{
			document.getElementById("countryErrorMsg").innerHTML="";
			document.getElementById("countryErrorMsgOuter").style.display="none";
			return true;
		}
	}
	function validateZipcode(){
		//zipcode validation
		var zipCode=document.studentRegForm.zipcode.value;
		var zipCodeRegExp=/^[0-9]{6}$/;
		if(zipCode==""){
			/* alert("Zipcode cannot be Empty!"); */
			document.getElementById("zipcodeErrorMsgOuter").style.display="block";
			document.getElementById("zipcodeErrorMsg").innerHTML="Zipcode cannot be Empty!";
			document.studentRegForm.zipcode.focus();
			return false;
		}else if(!zipCodeRegExp.test(zipCode)){
			/* alert("Enter a valid Zipcode!"); */
			document.getElementById("zipcodeErrorMsgOuter").style.display="block";
			document.getElementById("zipcodeErrorMsg").innerHTML="Enter a valid Zipcode!";
			document.studentRegForm.zipcode.focus();
			return false;
		}else{
			document.getElementById("zipcodeErrorMsg").innerHTML="";
			document.getElementById("zipcodeErrorMsgOuter").style.display="none";
			return true;
		}
		
	}
	function validateDateOfBirth(){
		//date of birth validation
		var dateOfBirth = document.studentRegForm.dateOfBirth.value;
		var dateOfBirthRegExp=/^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/;
		if(dateOfBirth == ""){
			/* alert("Date of Birth cannot be Empty!"); */
			document.getElementById("dateOfBirthErrorMsgOuter").style.display="block";
			document.getElementById("dateOfBirthErrorMsg").innerHTML="Date Of Birth cannot be Empty!";
			document.studentRegForm.dateOfBirth.focus();
			return false;
		}/* else if(!dateOfBirthRegExp.test(dateOfBirth)){
			document.getElementById("dateOfBirthErrorMsgOuter").style.display="block";
			document.getElementById("dateOfBirthErrorMsg").innerHTML="Enter a valid Date Of Birth!";
			document.studentRegForm.dateOfBirth.focus();
		} */
		else{
			document.getElementById("dateOfBirthErrorMsg").innerHTML="";
			document.getElementById("dateOfBirthMsgOuter").style.display="none";
			return true;
		}
		
	}
	function validateCourse(){
		console.log("from validateCourse function");
		alert("from validateCourse function");
		//course validation
		var course = document.getElementById("courseDropDown");
		var selectedCourse = course.options[course.selectedIndex].value;
		if(selectedCourse =="default"){
			alert("default selected");
			console.log("default selected");
			/* alert("You Should select a course!"); */
			document.getElementById("courseErrorMsgOuter").style.display="block";
			document.getElementById("courseErrorMsg").innerHTML="You Should select a course!";
		    course.focus();
			return false;
		}else{
			document.getElementById("courseErrorMsg").innerHTML="";
			document.getElementById("courseErrorMsgOuter").style.display="none";
			return true;
		}
	}
</script>
</body>
</html>