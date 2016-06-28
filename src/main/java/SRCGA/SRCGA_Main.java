/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.application.Application;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.stage.Stage;
import static javafx.application.Application.launch;

/**
 *
 * @author heathen
 */
public class SRCGA_Main extends Application {
    public static Stage preloader_stage; //this is set by the preloader
    public static Scene preloader_scene; //this is set by the preloader
    public static MainMenuScene MainMenuScreen;
    public static FxmlScene FxmlScreen;
    
    @Override
    public void start(Stage stage) {
        stage=preloader_stage; //our preloader stage is the only stage we will use in this app. If you need new content then just setRoot().
        stage.setTitle("Shadowrun Character Generator for Android");
        
        Platform.runLater(() -> {
            FxmlScreen = new FxmlScene(preloader_stage, "BuildMode.fxml");
        });
        
        MainMenuScreen = new MainMenuScene(stage);
        MainMenuScreen.Show();
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}

