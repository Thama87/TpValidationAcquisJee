<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--h1>Bienvenue</h1-->
        <p>
            <c:forEach items="${ etudiantList }" var="etudiant">
                <c:out value="-   nom ${ etudiant.getNom() } id ${ etudiant.getId() } ${ etudiant.getMoyenne() }" /><br/>
            </c:forEach>
        </p>
    </body>
</html>
