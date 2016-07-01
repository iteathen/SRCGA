/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import static SRCGA.SRCGA_Main.FxmlScreen;
import static SRCGA.SRCGA_Main.preloader_stage;
import javafx.application.Platform;
import javafx.application.Preloader;
import javafx.application.Preloader.ProgressNotification;
import javafx.geometry.Rectangle2D;
import javafx.scene.Scene;
import javafx.scene.control.ProgressBar;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import javafx.stage.Screen;

/**
 * Simple Preloader Using the ProgressBar Control
 *
 * @author heathen
 */
public class NewFXPreloader extends Preloader {
    
    ProgressBar bar;
    Stage stage;
    
    private Scene createPreloaderScene() {
        bar = new ProgressBar();
        StackPane p = new StackPane();
        SRCGA_Main.preloader_StackPane = p;
        p.getChildren().add(bar);
        Rectangle2D bounds = Screen.getPrimary().getVisualBounds();
        return new Scene(SRCGA_Main.preloader_StackPane, bounds.getWidth(), bounds.getHeight(), Color.BLACK);        
    }
    
    @Override
    public void start(Stage stage) throws Exception {
        this.stage = stage;
        SRCGA_Main.preloader_stage = stage;
        SRCGA_Main.preloader_scene = createPreloaderScene();
        stage.setTitle("Shadowrun Character Generator for Android");
        SRCGA_Main.preloader_scene.getStylesheets().add("splash.css");
        stage.setFullScreen(true); //mobile devices only
        stage.setScene(SRCGA_Main.preloader_scene);

        stage.show();
        Platform.runLater(() -> { //attempting to load the BuildMode screen in the background while the user is sitting at the main menu.
            FxmlScreen = new FxmlScene(preloader_stage, "BuildMode.fxml");
        });
    }

    @Override
    public void handleProgressNotification(ProgressNotification pn) {
        bar.setProgress(pn.getProgress());
    }    
    
}
