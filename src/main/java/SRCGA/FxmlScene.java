/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;
/**
 *
 * @author heathen
 */
public class FxmlScene {
    boolean failed = false;
    
    Stage stage;
    StackPane BaseStackPane = new StackPane();
    
    public FxmlScene(Stage stage, String fxmlfile) { //if the fxml specifies fx:controller use this one
        this.stage = stage;
            try{
                Node FxmlData = SRCGA_Main.FxmlHashMap.get(fxmlfile);
                if (FxmlData == null) {
                    FxmlData = FXMLLoader.load(Thread.currentThread().getContextClassLoader().getResource(fxmlfile));
                    SRCGA_Main.FxmlHashMap.put(fxmlfile, FxmlData);
                }
                BaseStackPane.getChildren().setAll(FxmlData);
                stage.getScene().addEventFilter(KeyEvent.KEY_PRESSED, event -> {
                    if(event.getCode() == KeyCode.ESCAPE){
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
        if(!failed){
            SRCGA_Main.preloader_StackPane.getChildren().clear();
            SRCGA_Main.preloader_StackPane.getChildren().add(BaseStackPane);
            return true;
        }
        else return false;
    }
}
