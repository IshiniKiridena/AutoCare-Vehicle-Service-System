/* enable insert submit button*/
function enableButton() {
	if (document.getElementById("checkBox").checked) {
		document.getElementById("submitBtn").disabled = false;
	}
	else {
		document.getElementById("submitBtn").disabled = true;
	}
}
/*form validation*/
function validateStform(){

	/*check the columns are null or not*/
	if( document.St_insertNewModel.modelID.value == "" ) {
			alert( "Please provide your modelID!" );
			document.St_insertNewModel.modelID.focus() ;
			return false;
		 }
		 
		 
	if( document.St_insertNewModel.brand.value == "" ) {
			alert( "Please provide your brand!" );
			document.St_insertNewModel.brand.focus() ;
			return false;
		 }
		 
		 
	if( document.St_insertNewModel.category.value == "" ) {
			alert( "Please provide your category!" );
			document.St_insertNewModel.category.focus() ;
			return false;}
			
			
	if( document.St_insertNewModel.unitprice.value == "" ) {
			alert( "Please provide your unitprice!" );
			document.St_insertNewModel.unitprice.focus() ;
			return false;
		}
		
		/*check the unit price value is valid*/
	if(isNaN(document.St_insertNewModel.unitprice.value)){
		alert("Enter valid price");
		document.St_insertNewModel.unitprice.focus() ;
		return false;
	}
	if(document.St_insertNewModel.unitprice.value<=0){
			alert("Invalid unitprice");
			document.St_insertNewModel.unitprice.focus() ;
			return false;
		}
		
		
	if( document.St_insertNewModel.warranty.value == "" ) {
			alert( "Please provide your warranty!" );
			document.St_insertNewModel.warranty.focus() ;
			return false;
		 }
	 
	if( document.St_insertNewModel.quantity.value == "" ) {
			alert( "Please provide your quantity!" );
			document.St_insertNewModel.quantity.focus() ;
			return false;
		 }
	if( document.St_insertNewModel.mil.value == "" ) {
			alert( "Please provide your Minimum Item limit!" );
			document.St_insertNewModel.mil.focus() ;
			return false;
		 }
		 /*data validation of the minimum item limit*/
	if(isNaN(document.St_insertNewModel.mil.value)){
		alert("Enter positive number");
		document.St_insertNewModel.mil.focus() ;
		return false;
	}
	if(document.St_insertNewModel.mil.value<=0){
			alert("Enter a positive number");
			document.St_insertNewModel.mil.focus() ;
			return false;
		}
		 
	return true;
}
function radioBtnValidation(){
	if(document.St_UpdatePage.status.value == "no"){
		alert( "You must update the status!" );
		document.St_UpdatePage.status.focus() ;
		return false;
	}

}
/*update button
onClick: function updateButton() {
	location.href = "St_updateQuantity.jsp";
}*/


