<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Studlear</title>
</head>
<body class="bg-light">
<div class="col-lg-4 col-md-3"></div>
<div class="container my-3 col-lg-4 col-md-6">
    <div class="row d-flex justify-content-center align-items-center">
        <h1 class="text-center"><br>Create account</h1>
        <form action="#" th:action="@{/create_account_submit}" class="needs-validation" method="post" novalidate>
            <div class="mb-3">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" placeholder="Name" name="name" required>
                <div class="invalid-feedback">Enter the name</div>
            </div>
            <div class="mb-3">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Email" name="email" required>
                <div class="invalid-feedback">Enter email address</div>
            </div>
            <div class="mb-3">
                <label for="password1">Password:</label>
                <input type="password" class="form-control" id="password1" placeholder="Password" name="password1" th:name="@{password}" data-bs-toggle="popover" data-bs-trigger="focus" title="The password must contain at least:" data-bs-content="6 characters, one uppercase, one lowercase, one number" required>
                <div class="invalid-feedback password1"><p id="p1">Enter password</p></div>
            </div>
            <div class="mb-3">
                <label for="password2">Confirm password:</label>
                <input type="password" class="form-control" id="password2" placeholder="Confirm password" name="password2" required>
                <div class="invalid-feedback password2"><p id="p2">Enter password</p></div>
            </div>
            <div class="d-grid">
                <br>
                <button type="submit" class="btn btn-dark btn-block">Create account</button>
            </div>
            <div class="text-center">
                <p><br><a href="/">Sign in</a></p>
            </div>
        </form>
    </div>
</div>

</body>
</html>
<script>
    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl)
    })
    var popover = new bootstrap.Popover(document.querySelector('.popover-dismiss'), {
        trigger: 'focus'
    })
</script>
<script type="text/javascript">
    var password1=document.getElementById("password1");
    var password2=document.getElementById("password2");

    (function () {

        var forms = document.querySelectorAll('.needs-validation')
        Array.prototype.slice.call(forms).forEach(function (form) {

            form.addEventListener('submit', function (event)
            {
                if (!form.checkValidity())
                {
                    event.preventDefault()
                    event.stopPropagation()
                }
                form.classList.add('was-validated')
            }, false)
        })
    })()

    function validatePassword(){
        var lower_case_letters = /[a-z]/g;
        var upper_case_letters = /[A-Z]/g;
        var numbers = /[0-9]/g;
        if(password1.value=="")
        {
            $("#p1").remove();
            $(".password1").append(`<p id="p1">Introduceți o parolă</p>`);
        }
        if(password2.value=="")
        {
            $("#p2").remove();
            $(".password2").append(`<p id="p2">Introduceți o parolă</p>`);
        }
        if(password1.value != password2.value)
        {
            $("#p1").remove();
            $("#p2").remove();
            $(".password1").append(`<p id="p1">Parola nu coincide</p>`);
            $(".password2").append(`<p id="p2">Parola nu coincide</p>`);
            password1.setCustomValidity(' ');
            password2.setCustomValidity(' ');
        }
        else
        {
            password1.setCustomValidity('');
            password2.setCustomValidity('');
        }
        if(password1.value.length<6)
        {
            $("#p1").remove();
            $(".password1").append(`<p id="p1">Parola trebuie să conțonă minim 6 carcatere</p>`);
            password1.setCustomValidity(' ');
        }
        else if(!password1.value.match(lower_case_letters))
        {
            $("#p1").remove();
            $(".password1").append(`<p id="p1">Parola nu conține litere mici</p>`);
            password1.setCustomValidity(' ');
        }
        else if(!password1.value.match(upper_case_letters))
        {
            $("#p1").remove();
            $(".password1").append(`<p id="p1">Parola nu conține litere mari</p>`);
            password1.setCustomValidity(' ');
        }
        else if(!password1.value.match(numbers))
        {
            $("#p1").remove();
            $(".password1").append(`<p id="p1">Parola nu conține cifre</p>`);
            password1.setCustomValidity(' ');
        }
        else if(password1.value == password2.value)
        {
            password1.setCustomValidity('');
            password2.setCustomValidity('');
        }
    }
    password1.onchange = validatePassword;
    password2.onkeyup = validatePassword;
</script>