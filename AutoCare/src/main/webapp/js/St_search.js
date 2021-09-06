
// JavaScript code
//function search_model() {
//    let input = document.getElementById('searchbar').value
//   input=input.toLowerCase();
//  let x = document.getElementsByClassName('models');

//    for (i = 0; i < x.length; i++) { 
//        if (!x[i].innerHTML.toLowerCase().includes(input)) {
//            x[i].style.display="none";//
//        }
//        else {
//            x[i].style.display="table";                 
//        }
//    }
//}


function searchFunction() {
	var input, filter, table, tr, td, i, txtValue;
	input = document.getElementById("searchbar");
	filter = input.value.toUpperCase();
	table = document.getElementById("myt");
	tr = table.getElementsByTagName("tr");
	for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}