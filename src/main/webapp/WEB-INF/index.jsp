<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>DiscoveryApp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>

<body>
<jsp:include page="fragment/navbar.jspf" />

<c:if test="${not empty requestScope.discoveries}">
    <c:forEach var="discovery" items="${requestScope.discoveries}">
        <div class="container">
            <div class="row bs-callout bs-callout-primary">
                <div class="col col-sm-2 col-md-2 col-lg-2 col-xl-2">
                    <a href="${pageContext.request.contextPath}/vote?discovery_id=${discovery.id}&vote=VOTE_UP"
                       class="btn btn-primary btn-success btn-block"><i class="fa fa-angle-up"></i></a>
                    <div class="card-body counter bg-light"><c:out
                            value="${discovery.upVote - discovery.downVote}"/></div>
                    <a href="${pageContext.request.contextPath}/vote?discovery_id=${discovery.id}&vote=VOTE_DOWN"
                       class="btn btn-primary btn-warning btn-block"><i class="fa fa-angle-down"></i></a>
                </div>

                <div class="col col-md-10 col-sm-10">
                    <h3 class="centered"><a href="<c:out value="${discovery.url}" />"><c:out
                            value="${discovery.name}"/></a></h3>
                    <h6><small>Added by: <c:out value="${discovery.user.username}"/>,
                        date: <fmt:formatDate value="${discovery.timestamp}" pattern="dd/MM/YYYY"/></small></h6>
                    <p><c:out value="${discovery.description}"/></p>
                    <a href="<c:out value="${discovery.url}" />" class="btn btn-info btn-xs" role="button">Go to site</a>
                </div>

            </div>

        </div>

    </c:forEach>
</c:if>

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
