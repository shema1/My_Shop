
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<script>
    function Init () {
        var myTextbox = document.getElementById('my-textbox');
        myTextbox.addEventListener( 'keypress', checkName, false );
    }

    function checkName(evt) {
        var charCode = evt.charCode;
        if (charCode != 0) {
            if (charCode < 97 || charCode > 122) {
                evt.preventDefault();
                alert(
                    "??????????, ??????????? ?????? ????? ??????? ???????? ?? ????????"
                    + "\n" + "charCode: " + charCode + "\n"
                );
            }
        }
    }
</script>
</head>
<body onload="Init ()">
<p>??????????, ??????? ???? ???, ????????? ?????? ????? ??????? ???????? ?? ????????.</p>
<form>
    <input type="text" id="my-textbox" />
</form>