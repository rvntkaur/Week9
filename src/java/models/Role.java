/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;

/**
 *
 * @author Renee
 */
public class Role implements Serializable{
    
    private int id;
    private String name;
    
    public Role(){
        
    }
    public Role(int id){
        this.id = id; 
    }
    
    public Role(int id, String name){
        this.id = id;
        this.name = name;
    }
    
    public Role(String name){
        this.name = name;
    }

    public int getRoleID() {
        return id;
    }

    public void setRoleID(int id) {
        this.id = id;
    }

    public String getRoleName() {
        return name;
    }

    public void setRoleName(String name) {
        this.name = name;
    }   
}
