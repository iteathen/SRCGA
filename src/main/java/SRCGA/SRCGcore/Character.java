/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA.SRCGcore;

import java.util.Collection;

/**
 *
 * @author heathen
 */
public class Character {
    private String name;
    private Collection<Karma> myKarma;
    public void karmaReward(int amount, Object source){
        for(int i=0;i<=amount;i++){
            myKarma.add(new Karma(source));
        }
    }
}
