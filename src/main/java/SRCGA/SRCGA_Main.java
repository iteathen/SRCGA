/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import java.util.HashMap;
import java.util.Map;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.scene.Node;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Font;

/**
 *
 * @author heathen
 */
public class SRCGA_Main extends Application {
    public static Stage preloader_stage; //this is set by the preloader
    public static Scene preloader_scene; //this is set by the preloader
    public static StackPane preloader_StackPane; //this is set by the preloader
    public static Map<String, Node> FxmlHashMap = new HashMap<>(); //cache for fxml documents. The FxmlScene class loads this cache in the preloader.
    public static MainMenu MainMenuScreen;
    public static FxmlScene FxmlScreen;
    public static Font Resistance;
    public static Font Nasa;

    @Override
    public void start(Stage stage) {
        Font.loadFont(getClass().getResourceAsStream("/CGFLocustResistance.tff"), 20);
        Font.loadFont(getClass().getResourceAsStream("/Nasalized.tff"), 20);
        stage=preloader_stage; //our preloader stage is the only stage we will use in this app. If you need new content then just setRoot() on the scene.
        MainMenuScreen = new MainMenu(stage);
        MainMenuScreen.Show();
    }
    
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}

