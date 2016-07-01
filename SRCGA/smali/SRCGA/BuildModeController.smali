.class public LSRCGA/BuildModeController;
.super Ljava/lang/Object;
.source "BuildModeController.java"

# interfaces
.implements Ljavafx/fxml/Initializable;


# instance fields
.field private AddActiveSkillButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private AddKnowledgeSkillButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private AttributeAgilityLeftArrowButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private AttributeBodyLeftArrowButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private AttributeBodyRightArrowButton:Ljavafx/scene/control/Button;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field public AttributeNaturalBody:Ljavafx/scene/control/Label;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private BuildModeRemainingKarmaLabel:Ljavafx/scene/control/Label;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private BuildModeRemainingSkillPointsLabel:Ljavafx/scene/control/Label;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private BuildModeSkillsVBox:Ljavafx/scene/layout/VBox;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field

.field private BuildModeStackPane:Ljavafx/scene/layout/StackPane;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":LSRCGA/BuildModeController;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private AttributeAgilityLeftArrowButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 0
    .param p1, "event"    # Ljavafx/event/ActionEvent;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method private AttributeBodyLeftArrowButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 5
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":LSRCGA/BuildModeController;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, LSRCGA/BuildModeController;->AttributeNaturalBody:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 63
    .local v2, "i":I
    add-int/lit8 v2, v2, -0x1

    .line 64
    move-object v3, v0

    iget-object v3, v3, LSRCGA/BuildModeController;->AttributeNaturalBody:Ljavafx/scene/control/Label;

    move v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private AttributeBodyRightArrowButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 5
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":LSRCGA/BuildModeController;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    iget-object v3, v3, LSRCGA/BuildModeController;->AttributeNaturalBody:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 71
    .local v2, "i":I
    add-int/lit8 v2, v2, 0x1

    .line 72
    move-object v3, v0

    iget-object v3, v3, LSRCGA/BuildModeController;->AttributeNaturalBody:Ljavafx/scene/control/Label;

    move v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method AddActiveSkillButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 8
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":LSRCGA/BuildModeController;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    new-instance v3, LSRCGA/SelectionWindow;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, LSRCGA/BuildModeController;->BuildModeStackPane:Ljavafx/scene/layout/StackPane;

    const-string v6, "ActiveSkillSelectionWindow.fxml"

    invoke-direct {v4, v5, v6}, LSRCGA/SelectionWindow;-><init>(Ljavafx/scene/layout/StackPane;Ljava/lang/String;)V

    move-object v2, v3

    .line 114
    .local v2, "t":LSRCGA/SelectionWindow;
    return-void
.end method

.method AddKnowledgeSkillButtonClicked(Ljavafx/event/ActionEvent;)V
    .locals 0
    .param p1, "event"    # Ljavafx/event/ActionEvent;
    .annotation runtime Ljavafx/fxml/FXML;
    .end annotation

    .prologue
    .line 119
    return-void
.end method

.method public initialize(Ljava/net/URL;Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "rb"    # Ljava/util/ResourceBundle;

    .prologue
    .line 127
    return-void
.end method
