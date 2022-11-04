package com.mycompany.tpvdatests;

import java.util.ArrayList;

public class GestionEtudiants {
    private ArrayList<Etudiant> etudiantList;

    public GestionEtudiants() {
        this.etudiantList = new ArrayList<>();
    }

    public ArrayList<Etudiant> getListeEtudiants() {
        return etudiantList;
    }

    public void setEtudiantList(ArrayList<Etudiant> etudiantList) {
        this.etudiantList = etudiantList;
    }
    
}
