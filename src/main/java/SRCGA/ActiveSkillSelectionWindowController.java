/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

/**
 *
 * @author heathen
 */


import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.Group;
import javafx.scene.control.Button;
import javafx.scene.layout.StackPane;

public class ActiveSkillSelectionWindowController {

    @FXML
    private StackPane abcde;

    @FXML
    private Button testtest;

    @FXML
    void abcd(ActionEvent event) {
        StackPane t = (StackPane) abcde.getParent();
        t.getChildren().remove(abcde);
    }

}

