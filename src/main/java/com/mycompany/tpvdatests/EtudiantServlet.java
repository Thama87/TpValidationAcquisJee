package com.mycompany.tpvdatests;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EtudiantServlet", urlPatterns = {"/etudiant"})
public class EtudiantServlet extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        ArrayList<Etudiant> etudiantList = new ArrayList<>();
        Etudiant etudiant1 = new Etudiant("1", "Etudiant1", 12.0);
        Etudiant etudiant2 = new Etudiant("2", "Etudiant2", 14.0);
        Etudiant etudiant3 = new Etudiant("3", "Etudiant3", 9.0);
        Etudiant etudiant4 = new Etudiant("4", "Etudiant4", 15.0);
        Etudiant etudiant5 = new Etudiant("5", "Etudiant5", 8.0);

        etudiantList.add(etudiant1);
        etudiantList.add(etudiant2);
        etudiantList.add(etudiant3);
        etudiantList.add(etudiant4);
        etudiantList.add(etudiant5);
        
        
        request.setAttribute("etudiantList", etudiantList);
        request.getRequestDispatcher("WEB-INF/etudiant.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        doGet(request,response);
    }
}
