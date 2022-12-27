<jsp:include page="Home_page.jsp"/>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Sign in</title>
    <!--Bootsrtrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <script src="assets\js\bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="col-lg-4 col-md-3"></div>
<div class="container my-3 col-lg-4 col-md-6">
    <div class="row d-flex justify-content-center align-items-center">
        <h1 style="text-align: center">Sign in</h1>
        <form action="#" th:action="@{/sign_in_submit}" class="needs-validation" name="sign_in" method="post">
            <div class="mb-3 mt-3">
                <label for="email">Email:</label>
                <input type="email" class="form-control" placeholder="Email" name="email" id="email">
            </div>
            <div class="mb-3 mt-3">
                <label for="password">Password:</label>
                <input type="password" class="form-control" placeholder="Password" name="password" id="password">
            </div>
            <div class="form-check mb-3">
                <label class="form-check-label">
                    <input class="form-check-input" type="checkbox" name="show_password" onclick="myFunction()"> Arată parola
                </label>
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-dark btn-block">Autentificare</button>
            </div>
            <div class="text-center">
                <br><a href="create_account">Create account</a>
            </div>
        </form>
        <%
            String companyWebsite = "123";
        %>
    </div>
    <script>
        function myFunction() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</div>
</body>
</html>