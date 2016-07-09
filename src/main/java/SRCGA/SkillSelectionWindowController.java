/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import SRCGA.SRCGcore.Skill;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TreeItem;
import javafx.scene.control.TreeView;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;

public class SkillSelectionWindowController {
    
    public SkillSelectionWindowController(){
        
    }

    @FXML
    private StackPane RootStackPane;

    @FXML
    private TreeView<Skill> SkillSelectionTreeView;

    @FXML
    private Label SkillSelectionDescriptionLabel;

    @FXML
    private Button SkillSelectionCancelButton;

    @FXML
    private VBox MyParentIsRootStackPane;

    @FXML
    private Button SkillSelectionOKButton;

    @FXML
    void SkillSelectionOKButtonClicked(ActionEvent event) {
        BuildModeController t = (BuildModeController) SRCGA_Main.FxmlHashMap.get("BuildMode.fxml").getUserData();
        t.addSkill(SkillSelectionTreeView.getSelectionModel().getSelectedItem().getValue());
        SRCGA_Main.preloader_StackPane.getChildren().remove(RootStackPane.getParent());
    }

    @FXML
    void SkillSelectionCancelButtonClicked(ActionEvent event) {
        SRCGA_Main.preloader_StackPane.getChildren().remove(RootStackPane.getParent());
    }
    
    @FXML
    void initialize (){
        // populate with skills data
        Skill s = new Skill("Firearms");
        //s.setName("Firearms");
        System.out.println(s.getName());
        
        Skill t = new Skill("Longarms");
        s.addSkillToGroup(t);
        t = new Skill("Automatics");
        s.addSkillToGroup(t);
        t = new Skill("Pistols");
        s.addSkillToGroup(t);
        
        TreeItem<Skill> SkillItem = new TreeItem<Skill>(s);
        for(Skill g : s.getSkillsFromGroup()){
            SkillItem.getChildren().add(new TreeItem<Skill>(g));
        }

        SkillSelectionTreeView.setRoot(SkillItem);
        SkillSelectionTreeView.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> SkillSelectionDescriptionLabel.setText(newValue.getValue().getDescription()));
    }

}