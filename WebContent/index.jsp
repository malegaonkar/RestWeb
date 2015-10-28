<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function getData(){
	var urlBase="http://localhost:8080/RestWeb";
	console.log("hi Dost!!");
	 var xhttp = new XMLHttpRequest();
	  xhttp.open("GET",urlBase+ "/tasks", false);
	  xhttp.send();
	  document.getElementById("demo").innerHTML = xhttp.responseText;
	  
		$http.get(urlBase+'/tasks').
    	success(function(data) {
	        $scope.tasks = data;
	        for(var i=0;i<$scope.tasks.length;i++){
	            if($scope.tasks[i].taskStatus=='COMPLETED'){
	           	 $scope.selection.push($scope.tasks[i].taskId);
	        }
	        }
    });
}
</script>
</head>
<body>
<form>
<input type="button" id="button" name="button" onClick="getData()" />
<div id="demo"></div>
</form>
</body>
</html>