<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            ol { 
                counter-reset: item;
                list-style-type: none;
            }
            li { display: block; }
            li:before { 
                content: counter(item) "  "; 
                counter-increment: item 
            }
        </style>
    </head>
    <body>
        <!--h1>Bienvenue</h1-->
        <ol>
            <c:forEach items="${ etudiantList }" var="etudiant">
                <li><c:out value="nom ${ etudiant.getNom() } id ${ etudiant.getId() } ${ etudiant.getMoyenne() }" /></li>
            </c:forEach>
        </ol>
    </body>
</html>
