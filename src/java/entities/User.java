/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;
import javax.persistence.Table;

@Entity
@Table(name="ADMIN1.USERS")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int U_ID;
    private String name;
    private String email;
    private String password;
    private String location;
    @Temporal(TemporalType.TIMESTAMP)
    private Date registration;

    public void setLocation(String location) {
        this.location = location;
    }

    public void setRegistration(Date registration) {
        this.registration = registration;
    }

    public String getLocation() {
        return location;
    }

    public Date getRegistration() {
        return registration;
    }
    
    public int getU_ID() {
        return U_ID;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setU_ID(int U_ID) {
        this.U_ID = U_ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String toString(){
        return ((Integer)getU_ID()).toString()+"."+getName();
    }
}
