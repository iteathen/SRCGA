/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import static SRCGA.SRCGA_Main.FxmlHashMap;
import javafx.geometry.Pos;
import javafx.scene.layout.VBox;
import javafx.scene.control.Label;
import javafx.scene.control.Button;
import javafx.scene.control.ContentDisplay;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;
import javafx.geometry.Insets;
import javafx.scene.layout.StackPane;



/**
 *
 * @author heathen
 * 
 * 
 * 
 */
public class MainMenu {
    StackPane BaseStackPane = new StackPane();
    VBox vbox= new VBox();
    Label title = new Label("SRCGA");
    Label subtitle = new Label("A Shadowrun character generator for Android");
    Button newcharacter = new Button("New Character");
    Button savecharacter = new Button("Save Character");
    Button loadcharacter = new Button("Load Character");
    Button quit = new Button("Quit");
    Stage stage;
    Label HashMapSizeLabel = new Label();;

    public MainMenu(Stage stage){
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
        vbox.getChildren().add(HashMapSizeLabel);
        
        BaseStackPane.getChildren().add(vbox);

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
            System.exit(0);
        });
    }
    public void Show(){
        HashMapSizeLabel.setText("HashMap size: " + SRCGA_Main.FxmlHashMap.size());
        SRCGA_Main.preloader_StackPane.getChildren().clear();
        SRCGA_Main.preloader_StackPane.getChildren().add(BaseStackPane);
    }
}
