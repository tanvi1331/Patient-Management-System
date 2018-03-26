<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "com.smartgwt.client.widgets.Canvas,java.util.*,com.smartgwt.client.widgets.calendar.Calendar"%>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Pick the Date</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  $("#datepicker").datepicker({
		    showButtonPanel: true,
		    dateFormat: 'yy-mm-dd',
		    onSelect: function() {
		        var dateObject = $('#datepicker').datepicker().val();
		    }
		   }
		  );
  } );
  </script>
</head>
<body>
<form action="TimeGetter" method="get">
<p>Date: <input type="text" id="datepicker" name="datepicker"></p>
<input type="submit" value="Go">
</form>
</body>
</html>