/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA.SRCGcore;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;



/**
 *
 * @author heathen
 */
public class Skill {
    private String name;
    private List<Specialization> specializations = new ArrayList<>();
    private int allowedSpecializations=1;
    private List<Bonus> bonuses = new ArrayList<>();
    private List<Karma> collectedKarma = new ArrayList<>();
    private int rating = 0;
    private String Description;
    private List<Skill> skillCollection = new ArrayList<>();
    
    
    public Skill(String name){
        this.name = name;
    }
    public boolean addSpecialization(String name, int value, List<Karma> karmacollection){
        if (specializations.size() < allowedSpecializations){
            if(karmacollection.size()<Specialization.KARMA_COST)return false;
            for(int i=0;i<Specialization.KARMA_COST;i++){
                Karma k = karmacollection.iterator().next();
                collectedKarma.add(k);
                karmacollection.remove(k);
            }
            try{
                specializations.add(new Specialization(name, value, karmacollection));
                return true;
            }catch(ArithmeticException e){
                return false;
            }
        }
        else return false;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getName(){
        return name;
    }
    public boolean addBonus(Object source, int value, String description){
        bonuses.add(new Bonus(source, value, description));
        return true;
    }

    public int getRating(){
        return rating;
    }
    public void increaseRating(List<Karma> karmacollection) throws ArithmeticException {
        if(karmacollection.size() < (rating+1)*2) throw new ArithmeticException("Not enough karma!");
        for(int i=0;i<(rating+1)*2;i++){
            Karma k = karmacollection.iterator().next();
            collectedKarma.add(k);
            karmacollection.remove(k);
        }
        rating ++;
    }
        public void decreaseRating(List<Karma> karmacollection) throws ArithmeticException {
        if(rating > 0);{
            for(int i=0;i<(rating)*2;i++){
                Karma k = collectedKarma.iterator().next();
                if(k==null) throw new ArithmeticException("One or more skill points was not bought with karma.");
                collectedKarma.remove(k);
                karmacollection.add(k);
            }
            rating--;
        }
    }
    
    public List<Specialization> getSpecializations(){
        return specializations;
    }
    public String getDescription(){
        return Description;
    }
    public void setDescription(String description){
        Description = description;
    }
    
    
    
    
    public void addSkillToGroup(Skill mySkill){
        skillCollection.add(mySkill);
    }
    public List<Skill> getSkillsFromGroup(){
        return skillCollection;
    }    
    
    @Override
    public String toString(){
        return this.name;
    }
    
    
    
    
    public class Specialization {
        private String name;
        private int value;
        public static final int KARMA_COST = 7;
        private List<Karma> CollectedKarma;
        public Specialization (String name, int value, List<Karma> karmacollection) throws ArithmeticException {
            if(karmacollection.size() < KARMA_COST) throw new ArithmeticException("Not enough karma!");
            for(int i=0;i<KARMA_COST;i++){
                Karma k = karmacollection.iterator().next();
                CollectedKarma.add(k);
                karmacollection.remove(k);
            }
            this.name = name;
            this.value = value;
        }
        public String getName(){
            return name;
        }
        public int getValue(){
            return value;
        }
        public void setName(String name){
            this.name = name;
        }
        public void setValue(int value){
            this.value = value;
        }
    }

    
    
    
    
    
    private class Bonus {
        private Object source; //where did the bonus come from.
        private int value; //what is the value of the bonus
        private String description;
        public Bonus(Object source, int value, String description){
            this.source = source;
            this.value = value;
            this.description = description;
        }
        public Object getValue(){
            return value;
        }
        public Object getDescription(){
            return description;
        }
        public Object getSource(){
            return source;
        }
        public void setSource(Object source){
            this.source = source;
        }
        public void setValue(int value){
            this.value = value;
        }
        public void setDescription(String description){
            this.description = description;
        }
    }
}
