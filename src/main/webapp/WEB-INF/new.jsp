<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

    <div class="col-md-8 offset-md-2">

        <h2 class="form-group mt-2">Add new discovery</h2>

        <form method="post" action="#">
            <div class="form-group mb-0">
                <label for="discoveryTitle"></label>
                <input id="discoveryTitle" name="inputName" type="text" class="form-control" placeholder="What are you adding?"
                           required autofocus/>
            </div>

            <div class="form-group mt-0 mb-0">
                <label for="discoveryURL"></label>
                <input id="discoveryURL" name="inputUrl" type="url" class="form-control" placeholder="URL" required autofocus/>
            </div>

            <div class="form-group mt-0">
                <label for="discoveryDescription"></label>
                <textarea id="discoveryDescription" name="inputDescription" rows="5" class="form-control" placeholder="Description"
                          required autofocus></textarea>
            </div>

            <input class="btn btn-lg btn-primary btn-block" type="submit" value="Add!"/>
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
