/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.application.Preloader;
import javafx.application.Preloader.ProgressNotification;
import javafx.application.Preloader.StateChangeNotification;
import javafx.scene.Scene;
import javafx.scene.control.ProgressBar;
import javafx.scene.layout.BorderPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

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
        BorderPane p = new BorderPane();
        p.setCenter(bar);
        return new Scene(p, 600, 800, Color.BLACK);        
    }
    
    @Override
    public void start(Stage stage) throws Exception {
        this.stage = stage;
        SRCGA_Main.preloader_stage = stage;
        Scene myscene = createPreloaderScene();
        SRCGA_Main.preloader_scene = myscene;
        myscene.getStylesheets().add("splash.css");
        stage.setScene(myscene);
        stage.setFullScreen(true); //mobile devices only
        stage.show();
    }
    
    @Override
    public void handleStateChangeNotification(StateChangeNotification scn) {
        if (scn.getType() == StateChangeNotification.Type.BEFORE_START) {
            //stage.hide(); // we reuse the stage in main...DO NOT CLOSE IT!
        }
    }
    
    @Override
    public void handleProgressNotification(ProgressNotification pn) {
        bar.setProgress(pn.getProgress());
    }    
    
}
