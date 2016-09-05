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
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="ADMIN1.PRIVATEMESSAGES")  
public class PrivateMessage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int PM_ID;
    private String content;
    private int FROM_ID;
    private int TO_ID;
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    public int getPM_ID() {
        return PM_ID;
    }

    public String getContent() {
        return content;
    }

    public int getFROM_ID() {
        return FROM_ID;
    }

    public int getTO_ID() {
        return TO_ID;
    }

    public Date getDate() {
        return date;
    }

    public void setPM_ID(int PM_ID) {
        this.PM_ID = PM_ID;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setFROM_ID(int FROM_ID) {
        this.FROM_ID = FROM_ID;
    }

    public void setTO_ID(int TO_ID) {
        this.TO_ID = TO_ID;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    
    
}
