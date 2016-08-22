/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="ADMIN1.TOPICS")  
public class Topic {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int T_ID;
    private String name;
    private int C_ID;

    public int getT_ID() {
        return T_ID;
    }

    public String getName() {
        return name;
    }

    public int getC_ID() {
        return C_ID;
    }

    public void setT_ID(int T_ID) {
        this.T_ID = T_ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setC_ID(int C_ID) {
        this.C_ID = C_ID;
    }
    
}
