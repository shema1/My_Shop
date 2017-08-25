<form method="post" action="" onsubmit="return TestLogin1(this.login.value);">
    Логин: <input type="text" name="login">
</form>

<script type="text/javascript">
    //Я бы не советовал делать проверку поля логина одним регулярным выражением.
    // Лучше разбить на несколько маленьких условий.
    function TestLogin1(login){

        if(/^[a-zA-Z1-9]+$/.test(login) === false)
        {alert('В логине должны быть только латинские буквы'); return false;}
        if(login.length < 4 || login.length > 20)
        { alert('В логине должен быть от 4 до 20 символов'); return false;}
        if(parseInt(login.substr(0, 1)))
        {alert('Логине должен начинаться с буквы'); return false;}

        return true;
    }

    //Так просто можно сделать более информативные сообщения об ошибках.

    //Но если хочется всё в одном условии.

    function TestLogin1(login){
        if(/^[a-zA-z]{1}[a-zA-Z1-9]{3,20}$/.test(login) === false)
        {alert('Не верный логин'); return false;}

        return true;
    }

    //--></script>