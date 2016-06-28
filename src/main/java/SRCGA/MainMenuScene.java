/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import javafx.geometry.Pos;
import javafx.scene.layout.VBox;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.scene.control.ContentDisplay;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;
import javafx.geometry.Insets;



/**
 *
 * @author heathen
 * 
 * 
 * 
 */
public class MainMenuScene {
    VBox vbox= new VBox();
    Label title = new Label("Shadowrun");
    Label subtitle = new Label("Character Generator for Android");
    Button newcharacter = new Button("New Character");
    Button savecharacter = new Button("Save Character");
    Button loadcharacter = new Button("Load Character");
    Button quit = new Button("Quit");
    Stage stage;

    public MainMenuScene(Stage stage){
        this.stage = stage;
        String css = this.getClass().getResource("/style.css").toExternalForm();
        vbox.setSpacing(15);
        vbox.getStylesheets().add(css);
        vbox.getStyleClass().add("background");
 
        title.getStyleClass().add("title");
        title.setAlignment(Pos.CENTER);
        title.setContentDisplay(ContentDisplay.CENTER);
        title.setTextAlignment(TextAlignment.CENTER);
        
        subtitle.getStyleClass().add("subtitletext2");
        subtitle.setAlignment(Pos.CENTER);
        subtitle.setContentDisplay(ContentDisplay.CENTER);
        subtitle.setTextAlignment(TextAlignment.CENTER);
        subtitle.setPadding(new Insets(0, 0, 45, 0));
        
        
        newcharacter.getStyleClass().add("mainmenubutton'");
        newcharacter.setAlignment(Pos.CENTER);
        newcharacter.setPrefWidth(180.0);
        
        savecharacter.getStyleClass().add("mainmenubutton'");
        savecharacter.setAlignment(Pos.CENTER);
        savecharacter.setPrefWidth(180.0);
        
        loadcharacter.getStyleClass().add("mainmenubutton'");
        loadcharacter.setAlignment(Pos.CENTER);
        loadcharacter.setPrefWidth(180.0);
        
        quit.getStyleClass().add("mainmenubutton'");
        quit.setAlignment(Pos.CENTER);
        quit.setPrefWidth(180.0);
        
        
        vbox.getChildren().add(title);
        vbox.getChildren().add(subtitle);
        
        vbox.getChildren().add(newcharacter);
        vbox.getChildren().add(savecharacter);
        vbox.getChildren().add(loadcharacter);
        vbox.getChildren().add(quit);

        newcharacter.setOnAction((event) -> {
            SRCGA_Main.FxmlScreen.Show();
        });
        
        savecharacter.setOnAction((event) -> {
            //initiate the save procedure here but create a new class to handle saving a character.
        });
        
        loadcharacter.setOnAction((event) -> {
            //initiate the load procedure here but create a new class to handle loading a character.
        });
        
        quit.setOnAction((event) -> {
            stage.close();
        });
    }
    public void Show(){
        this.stage.getScene().setRoot(vbox);
    }
}
