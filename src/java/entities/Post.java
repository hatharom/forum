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
@Table(name = "ADMIN1.POST")
public class Post {

    public void setP_ID(int P_ID) {
        this.P_ID = P_ID;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setU_ID(int U_ID) {
        this.U_ID = U_ID;
    }

    public void setT_ID(int T_ID) {
        this.T_ID = T_ID;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setPrepost(int prepost) {
        this.prepost = prepost;
    }

    public int getP_ID() {
        return P_ID;
    }

    public String getContent() {
        return content;
    }

    public int getU_ID() {
        return U_ID;
    }

    public int getT_ID() {
        return T_ID;
    }

    public Date getDate() {
        return date;
    }

    public int getPrepost() {
        return prepost;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int P_ID;
    private String content;
    private int U_ID;
    private int T_ID;
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    private int prepost;
}
