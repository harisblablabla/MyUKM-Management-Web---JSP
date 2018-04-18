/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package object;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.ArrayList;

/**
 *
 * @author Haris
 */
public interface ICoach2{
    public int getCoachID();
    public void setCoachID(int CoachID);
    public String getCoachName();
    public void setCoachName(String CoachName);
    public String getCoachGender();
    public void setCoachGender(String CoachGender); 
    public String getCoachAddress();
    public void setCoachAddress(String CoachAddress);
    public String getCoachPhoneNumber();
    public void setCoachPhoneNumber(String CoachPhoneNumber);
    public int doInsert();
    public int doUpdate();
    public int doDelete();  
    public ArrayList display();
    public ArrayList getRecord();
}
