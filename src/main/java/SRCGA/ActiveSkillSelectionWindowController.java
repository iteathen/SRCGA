package SRCGA;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TreeItem;
import javafx.scene.control.TreeView;
import javafx.scene.layout.VBox;

public class ActiveSkillSelectionWindowController {
    public ActiveSkillSelectionWindowController(){
        
    }
    
    @FXML
    private Button ActiveSkillSelectionCancelButton;

    @FXML
    private Label ActiveSkillSelectionDescriptionLabel;

    @FXML
    private Button ActiveSkillSelectionOKButton;

    @FXML
    private TreeView<String> ActiveSkillSelectionTreeView;
    
    @FXML
    private VBox MyParentIsRootStackPane;

    @FXML
    void ActiveSkillSelectionOKButtonClicked(ActionEvent event) {

    }

    @FXML
    void ActiveSkillSelectionCancelButtonClicked(ActionEvent event) {
        SRCGA_Main.preloader_StackPane.getChildren().remove(MyParentIsRootStackPane.getParent().getParent());
    }
    
    @FXML
    public void initialize() {
        // this is SUPPOSE to run when the fxml file is loaded
        Button rbtn = new Button("+");
        Button dbtn = new Button("-");
        TreeItem<String> rootItem = new TreeItem<> ("test", rbtn); //String will replaced with Skill later
        rootItem.setExpanded(true);
        for (int i = 1; i < 50; i++) {
            TreeItem<String> item = new TreeItem<> ("Message" + i);            
            rootItem.getChildren().add(item);
        } 
        ActiveSkillSelectionTreeView.setRoot(rootItem);
    }
}
