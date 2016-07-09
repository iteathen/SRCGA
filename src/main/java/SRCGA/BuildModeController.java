/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SRCGA;

import SRCGA.SRCGcore.*;
import java.util.ArrayList;
import java.util.List;
import javafx.application.Platform;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TabPane;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Priority;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.shape.Circle;
import javafx.util.Callback;

/**
 *
 * @author heathen
 */
public class BuildModeController {
    private final List<Skill> SkillList = new ArrayList<>();
    TableView SkillsTable = new TableView();
    public BuildModeController(){
        // Seems to be nessary to have an empty constructor just so that initialize() will be called.
    }
    
    @FXML
    public Label AttributeNaturalBody;

    @FXML
    private void AttributeBodyLeftArrowButtonClicked(ActionEvent event) {
        int i = Integer.parseInt(AttributeNaturalBody.getText());
        i--; //i-- crashes? something in here crashes only on android
        AttributeNaturalBody.setText(String.valueOf(i));
    }
    
    // same as above for a different button
    @FXML
    private void AttributeBodyRightArrowButtonClicked(ActionEvent event) {
        int i = Integer.parseInt(AttributeNaturalBody.getText());
        i++;
        AttributeNaturalBody.setText(String.valueOf(i));
    }
    
    @FXML
    private void AttributeAgilityLeftArrowButtonClicked(ActionEvent event) {
        //int i = Integer.parseInt(AttributeNaturalAgility.getText());
        //i--;
        //AttributeNaturalAgility.setText(String.valueOf(i));
    }

    @FXML
    private Button AttributeBodyLeftArrowButton;

    @FXML
    private Button AttributeAgilityLeftArrowButton;

    @FXML
    private Button AttributeBodyRightArrowButton;
    
    @FXML
    private VBox BuildModeSkillsVBox;
    
    @FXML
    private Label BuildModeRemainingSkillPointsLabel;

    @FXML
    private Label BuildModeRemainingKarmaLabel;
    
    @FXML
    private Button AddSkillButton;
    
    @FXML
    private StackPane BuildModeStackPane;
    
    @FXML
    private TabPane BuildModeTabPane;
    
    @FXML
    private VBox SkillsTableVBox;
    

    @FXML
    void AddSkillButtonClicked(ActionEvent event) {
        SelectionWindow SkillSelectionWindow = new SelectionWindow("SkillSelectionWindow.fxml");
        SkillSelectionWindow.show();
    }
    
    public void addSkill(Skill skill){
        Button removeButton = new Button("remove");
        removeButton.setOnAction((event) -> {
            //
        });
        try{
           SkillList.add(skill); 
        }
        catch(Exception e){
            e.printStackTrace();
        }
        SkillsTable.getItems().add(skill);
    }
    
    @FXML
    public void initialize() {
        SkillsTable.getStyleClass().add("ActiveSkillTable");
        TableColumn SkillName = new TableColumn( "Skill" );
        SkillName.setCellValueFactory( new PropertyValueFactory<>( "name" ) );
        SkillName.setMaxWidth(120);

        TableColumn actionColSubtract = new TableColumn( "" );
        actionColSubtract.setCellValueFactory( new PropertyValueFactory<>( "DUMMY" ) );
        actionColSubtract.setMaxWidth(30);
        
        TableColumn SkillRating = new TableColumn( "Rating" );
        SkillRating.setCellValueFactory( new PropertyValueFactory<>( "rating" ) );
        SkillRating.setMaxWidth(30);

        TableColumn actionColAdd = new TableColumn( "" );
        actionColAdd.setCellValueFactory( new PropertyValueFactory<>( "DUMMY" ) );
        actionColAdd.setMaxWidth(30);
        
        TableColumn actionColRemove = new TableColumn( "" );
        actionColRemove.setCellValueFactory( new PropertyValueFactory<>( "DUMMY" ) );
        actionColRemove.setMaxWidth(30);

        Callback<TableColumn<Skill, String>, TableCell<Skill, String>> cellFactoryRemoveBtn = //
                new Callback<TableColumn<Skill, String>, TableCell<Skill, String>>()
                {
                    @Override
                    public TableCell call( final TableColumn<Skill, String> param )
                    {
                        final TableCell<Skill, String> cell = new TableCell<Skill, String>()
                        {

                            final Button btn = new Button( "X" );
                            

                            @Override
                            public void updateItem( String item, boolean empty )
                            {
                                super.updateItem( item, empty );
                                if ( empty )
                                {
                                    setGraphic( null );
                                    setText( null );
                                }
                                else
                                {
                                    btn.setOnAction( ( ActionEvent event ) ->
                                            {
                                                //Skill skill = getTableView().getItems().get( getIndex() );
                                                //System.out.println( skill.getName() + "   " + skill.getRating() );
                                                getTableView().getItems().remove(getIndex() );
                                    } );
                                    setGraphic( btn );
                                    setText( null );
                                }
                            }
                        };
                        return cell;
                    }
                };
        
        Callback<TableColumn<Skill, String>, TableCell<Skill, String>> cellFactorySubtractBtn = //
                new Callback<TableColumn<Skill, String>, TableCell<Skill, String>>()
                {
                    @Override
                    public TableCell call( final TableColumn<Skill, String> param )
                    {
                        final TableCell<Skill, String> cell = new TableCell<Skill, String>()
                        {

                            final Button btn = new Button( "-" );

                            @Override
                            public void updateItem( String item, boolean empty )
                            {
                                super.updateItem( item, empty );
                                if ( empty )
                                {
                                    setGraphic( null );
                                    setText( null );
                                }
                                else
                                {
                                    btn.setOnAction( ( ActionEvent event ) ->
                                            {
                                                //Skill skill = getTableView().getItems().get( getIndex() );
                                                //System.out.println( skill.getName() + "   " + skill.getRating() );
                                                
                                                List<Karma> k = new ArrayList();// REPLACE 
                                                
                                                for(int i=0;i<50;i++){
                                                    k.add(new Karma(null));
                                                }
                                                getTableView().getItems().get(getIndex() ).decreaseRating(k);
                                                SkillsTable.refresh();
                                    } );
                                    setGraphic( btn );
                                    setText( null );
                                }
                            }
                        };
                        return cell;
                    }
                };
        
        Callback<TableColumn<Skill, String>, TableCell<Skill, String>> cellFactoryAddBtn = //
                new Callback<TableColumn<Skill, String>, TableCell<Skill, String>>()
                {
                    @Override
                    public TableCell call( final TableColumn<Skill, String> param )
                    {
                        final TableCell<Skill, String> cell = new TableCell<Skill, String>()
                        {

                            final Button btn = new Button( "+" );

                            @Override
                            public void updateItem( String item, boolean empty )
                            {
                                super.updateItem( item, empty );
                                if ( empty )
                                {
                                    setGraphic( null );
                                    setText( null );
                                }
                                else
                                {
                                    btn.setOnAction( ( ActionEvent event ) ->
                                            {
                                                //Skill skill = getTableView().getItems().get( getIndex() );
                                                //System.out.println( skill.getName() + "   " + skill.getRating() );
                                                
                                                List<Karma> k = new ArrayList();// REPLACE 
                                                
                                                for(int i=0;i<50;i++){
                                                    k.add(new Karma(null));
                                                }
                                                getTableView().getItems().get(getIndex() ).increaseRating(k);
                                                SkillsTable.refresh();
                                    } );
                                    setGraphic( btn );
                                    setText( null );
                                }
                            }
                        };
                        return cell;
                    }
                };

        actionColRemove.setCellFactory( cellFactoryRemoveBtn );
        actionColSubtract.setCellFactory( cellFactorySubtractBtn );
        actionColAdd.setCellFactory( cellFactoryAddBtn );
        
        SkillsTable.getColumns().addAll( SkillName, actionColSubtract, SkillRating, actionColAdd, actionColRemove );
        SkillsTableVBox.getChildren().add(SkillsTable);
        SkillsTableVBox.setVgrow(SkillsTable, Priority.ALWAYS);
    }
    
}
