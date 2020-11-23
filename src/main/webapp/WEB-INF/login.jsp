<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>DiscoveryApp - Sign In</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>
<body>

<jsp:include page="fragment/navbar.jspf" />

<div class="container">
    <div class="col-sm-6 col-md-4 offset-md-4">

        <form action="j_security_check" method="post">
            <h1 class="h3 mb-3 mt-3 font-weight-normal">Please sign in</h1>

            <div class="form-group mb-0">
                <label for="username"></label>
                <input id="username" name="j_username" class="form-control" type="text" placeholder="Username" required autofocus>
            </div>

            <div class="form-group mt-0">
                <label for="password"></label>
                <input id="password" name="j_password" class="form-control" type="password" placeholder="Password" required>
            </div>

            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary" type="submit">Sign in</button>
        </form>
    </div>
</div>

<jsp:include page="fragment/footer.jspf" />

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
