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
    private Stage stage;
    private StackPane BaseStackPane = new StackPane();
    
    public FxmlScene(Stage stage, String fxmlfile) { //pass the stage that will display the FXML file and pass the FXML file path.
        this.stage = stage;
        try{
            Node FxmlData = SRCGA_Main.FxmlHashMap.get(fxmlfile); //Fill the FxmlData with nodes from the memory cache
            if (FxmlData == null) { // if that failed
                FXMLLoader t = new FXMLLoader(Thread.currentThread().getContextClassLoader().getResource(fxmlfile)); //get a file stream
                FxmlData = t.load(); //fill it with nodes from file stream
                FxmlData.setUserData(t.getController()); //attach the controller object to the userData so we can use it later.
                FxmlData.setId(fxmlfile); //give an id to make it easrier to find later.
                SRCGA_Main.FxmlHashMap.put(fxmlfile, FxmlData); //then put it in the cache. It might save disk time later.
            }
            BaseStackPane.getChildren().setAll(FxmlData); // We need a stackpane to layer windows later. In case the FXML object didn't have one of its own we add one here.
            stage.getScene().addEventFilter(KeyEvent.KEY_PRESSED, event -> { // set the esc key to return to the main menu.
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
            SRCGA_Main.preloader_StackPane.getChildren().clear(); //clear the old content
            SRCGA_Main.preloader_StackPane.getChildren().add(BaseStackPane); //load our new content
            return true;
        }
        else return false;
    }
}
