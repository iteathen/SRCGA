/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
/**
 *
 * @author heathen
 */
public class FxmlScene {
    boolean failed = false;
    Parent FXMLDoc = null;
    Stage stage;
    
    public FxmlScene(Stage stage, String resource) {
        this.stage = stage;
        
            try{
                FXMLDoc = FXMLLoader.load(getClass().getClassLoader().getResource(resource));
                stage.getScene().addEventFilter(KeyEvent.KEY_PRESSED, event -> {
                    if(event.getCode() == KeyCode.BACK_SPACE){
                        SRCGA_Main.MainMenuScreen.Show();
                    }
                });

            }
            catch(Exception e){
                e.printStackTrace();
                failed = true;
            }
        
    }
    public boolean Show(){
        if(!failed&&FXMLDoc!=null){
            stage.getScene().setRoot(FXMLDoc);
            return true;
        }
        else return false;
    }
}
