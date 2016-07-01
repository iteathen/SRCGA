.class public LSRCGA/ActiveSkillSelectionWindowController;
.super Ljava/lang/Object;
.source "ActiveSkillSelectionWindowController.java"


# instance fields
.field private ActiveSkillSelectionCancelButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private ActiveSkillSelectionDescriptionLabel:Ljavafx/scene/control/Label;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private ActiveSkillSelectionOKButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private ActiveSkillSelectionStackPane:Ljavafx/scene/layout/StackPane;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private ActiveSkillSelectionTreeView:Ljavafx/scene/control/TreeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeView",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":LSRCGA/ActiveSkillSelectionWindowController;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method ActiveSkillSelectionCancelButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 5
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":LSRCGA/ActiveSkillSelectionWindowController;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, LSRCGA/ActiveSkillSelectionWindowController;->ActiveSkillSelectionStackPane:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    check-cast v3, Ljavafx/scene/layout/StackPane;

    move-object v2, v3

    .line 47
    .local v2, "t":Ljavafx/scene/layout/StackPane;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/ActiveSkillSelectionWindowController;->ActiveSkillSelectionStackPane:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 48
    return-void
.end method

.method ActiveSkillSelectionOKButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 0
    .param p1, "event"    # Ljavafx/event/ActionEvent;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public initialize(Ljava/net/URL;Ljavax/annotation/Resources;)V
    .locals 13
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":LSRCGA/ActiveSkillSelectionWindowController;
    move-object v1, p1

    .local v1, "location":Ljava/net/URL;
    move-object v2, p2

    .local v2, "resources":Ljavax/annotation/Resources;
    new-instance v8, Ljavafx/scene/control/Button;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "+"

    invoke-direct {v9, v10}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v3, v8

    .line 55
    .local v3, "rbtn":Ljavafx/scene/control/Button;
    new-instance v8, Ljavafx/scene/control/Button;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "-"

    invoke-direct {v9, v10}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 56
    .local v4, "dbtn":Ljavafx/scene/control/Button;
    new-instance v8, Ljavafx/scene/control/TreeItem;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "test"

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;Ljavafx/scene/Node;)V

    move-object v5, v8

    .line 57
    .local v5, "rootItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<Ljava/lang/String;>;"
    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeItem;->setExpanded(Z)V

    .line 58
    const/4 v8, 0x1

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    const/16 v9, 0x32

    if-ge v8, v9, :cond_0

    .line 59
    new-instance v8, Ljavafx/scene/control/TreeItem;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Message"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljavafx/scene/control/TreeItem;-><init>(Ljava/lang/Object;)V

    move-object v7, v8

    .line 60
    .local v7, "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<Ljava/lang/String;>;"
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/control/TreeItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v7

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    .end local v7    # "item":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<Ljava/lang/String;>;"
    :cond_0
    move-object v8, v0

    iget-object v8, v8, LSRCGA/ActiveSkillSelectionWindowController;->ActiveSkillSelectionTreeView:Ljavafx/scene/control/TreeView;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/control/TreeView;->setRoot(Ljavafx/scene/control/TreeItem;)V

    .line 63
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v9, v0

    iget-object v9, v9, LSRCGA/ActiveSkillSelectionWindowController;->ActiveSkillSelectionTreeView:Ljavafx/scene/control/TreeView;

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
