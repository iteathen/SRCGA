/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.layout.StackPane;

/**
 *
 * @author heathen
 */
public class SelectionWindow {
    private StackPane BaseStackPane = new StackPane();
    
    public void removeall(){
        BaseStackPane.getChildren().clear();
    }
    public void remove(Node object){
        BaseStackPane.getChildren().remove(object);
    }
    public SelectionWindow(String fxmlfile){
        try{
            Node FxmlData = SRCGA_Main.FxmlHashMap.get(fxmlfile);
            if (FxmlData == null) {
                FxmlData = FXMLLoader.load(Thread.currentThread().getContextClassLoader().getResource(fxmlfile));
                System.out.println("if " + FxmlData);
                SRCGA_Main.FxmlHashMap.put(fxmlfile, FxmlData);
            }
            System.out.println("else " + FxmlData);
            BaseStackPane.getChildren().add(FxmlData); // null pointer
            System.out.println(BaseStackPane);
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    public void show(){
        
        SRCGA_Main.preloader_StackPane.getChildren().add(BaseStackPane);
    }
}
