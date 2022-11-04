<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table { 
                border: 1px solid #ddd;
                /*border-collapse: separate;*/
                border-left: 0;
                border-radius: 15px;
                border-spacing: 0px;
            }
            thead {
                display: table-header-group;
                vertical-align: middle;
                border-color: inherit;
                border-collapse: separate;
            }
            tr {
                display: table-row;
                vertical-align: inherit;
                border-color: inherit;
            }
            th, td {
                padding: 5px 10px 6px 10px; 
                text-align: left;
                vertical-align: top;
                border-left: 1px solid #ddd;
                min-width:50px;
            }
            td {
                border-top: 1px solid #ddd;    
            }
            td:last-child {
                padding: 0px 0px 0px 0px; 
            }
            thead:first-child tr:first-child th:first-child, tbody:first-child tr:first-child td:first-child {
                border-radius: 15px 0 0 0;
            }
            thead:last-child tr:last-child th:first-child, tbody:last-child tr:last-child td:first-child {
                border-radius: 0 0 0 15px;
            }
            thead:last-child tr:last-child th:first-child, tbody:last-child tr:last-child td:last-child {
                padding: 0px 0px 10px 0px;
            }
            
            h1{
                font-weight: normal;
                font-style: italic;
                /*text-decoration: underline;*/
            }

            img{
                width:100%;
                max-width:150px;
            }
        </style>
    </head>
    <body>
        <h1>Liste des étudiants</h1>
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
