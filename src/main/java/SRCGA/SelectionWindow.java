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
    public SelectionWindow(String fxmlfile){
        try{
            Node FxmlData = SRCGA_Main.FxmlHashMap.get(fxmlfile);
            if (FxmlData == null) {
                FXMLLoader t = new FXMLLoader(Thread.currentThread().getContextClassLoader().getResource(fxmlfile));
                FxmlData = t.load();
                FxmlData.setUserData(t.getController());
                FxmlData.setId(fxmlfile);
                SRCGA_Main.FxmlHashMap.put(fxmlfile, FxmlData);
            }
            BaseStackPane.getChildren().add(FxmlData);
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    public void removeall(){
        BaseStackPane.getChildren().clear();
    }
    public void remove(Node object){
        BaseStackPane.getChildren().remove(object);
    }
    public void show(){
        SRCGA_Main.preloader_StackPane.getChildren().add(BaseStackPane);
    }
}
