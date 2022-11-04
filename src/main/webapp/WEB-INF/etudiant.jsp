<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
            td {
                min-width:30px;
            }
            img{
                width:100%;
                max-width:150px;
            }
        </style>
    </head>
    <body>
        <!--h1>Bienvenue</h1-->
        <table>
            <thead>
                <tr>
                    <th>id</th>
                    <th>nom</th>
                    <th>moyenne</th>
                    <th>image</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${ etudiantList }" var="etudiant">
                    <tr>
                            <td><c:out value="${ etudiant.getId() }" /></td>
                            <td><c:out value="${ etudiant.getNom() }" /></td>
                            <td><c:out value="${ etudiant.getMoyenne() }" /></td>
                            <td><img src=<c:out value="images/${ etudiant.getImage() }" /> /></td>
                </c:forEach>
                </tr>
            </tbody>
        </table>
    </body>
</html>
