.class public LSRCGA/MainMenuScene;
.super Ljava/lang/Object;
.source "MainMenuScene.java"


# instance fields
.field loadcharacter:Ljavafx/scene/control/Button;

.field newcharacter:Ljavafx/scene/control/Button;

.field quit:Ljavafx/scene/control/Button;

.field savecharacter:Ljavafx/scene/control/Button;

.field stage:Ljavafx/stage/Stage;

.field subtitle:Ljavafx/scene/control/Label;

.field title:Ljavafx/scene/control/Label;

.field vbox:Ljavafx/scene/layout/VBox;


# direct methods
.method public constructor <init>(Ljavafx/stage/Stage;)V
    .locals 15

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":LSRCGA/MainMenuScene;
    move-object/from16 v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/VBox;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljavafx/scene/layout/VBox;-><init>()V

    iput-object v4, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    .line 28
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Label;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Shadowrun"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    .line 29
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Label;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Character Generator for Android"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    .line 30
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "New Character"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    .line 31
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Save Character"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    .line 32
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Load Character"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    .line 33
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/Button;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Quit"

    invoke-direct {v5, v6}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    .line 37
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, LSRCGA/MainMenuScene;->stage:Ljavafx/stage/Stage;

    .line 38
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "/style.css"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 39
    .local v2, "css":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/VBox;->setSpacing(D)V

    .line 40
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 41
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "background"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 43
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "title"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 44
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 45
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/scene/control/ContentDisplay;->CENTER:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    .line 46
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    .line 48
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "subtitletext2"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 49
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 50
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/scene/control/ContentDisplay;->CENTER:Ljavafx/scene/control/ContentDisplay;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setContentDisplay(Ljavafx/scene/control/ContentDisplay;)V

    .line 51
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    sget-object v4, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    .line 52
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    new-instance v4, Ljavafx/geometry/Insets;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide v10, 0x4046800000000000L    # 45.0

    const-wide/16 v12, 0x0

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setPadding(Ljavafx/geometry/Insets;)V

    .line 55
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "mainmenubutton\'"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 56
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 57
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->setPrefWidth(D)V

    .line 59
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "mainmenubutton\'"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 60
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 61
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->setPrefWidth(D)V

    .line 63
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "mainmenubutton\'"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 64
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 65
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->setPrefWidth(D)V

    .line 67
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    invoke-virtual {v3}, Ljavafx/scene/control/Button;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "mainmenubutton\'"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 68
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    sget-object v4, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 69
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    const-wide v4, 0x4066800000000000L    # 180.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Button;->setPrefWidth(D)V

    .line 72
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->title:Ljavafx/scene/control/Label;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 73
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->subtitle:Ljavafx/scene/control/Label;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 75
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 76
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 77
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 78
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/VBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 80
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->newcharacter:Ljavafx/scene/control/Button;

    invoke-static {}, LSRCGA/MainMenuScene$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 84
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->savecharacter:Ljavafx/scene/control/Button;

    invoke-static {}, LSRCGA/MainMenuScene$$Lambda$2;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 88
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->loadcharacter:Ljavafx/scene/control/Button;

    invoke-static {}, LSRCGA/MainMenuScene$$Lambda$3;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 92
    move-object v3, v0

    iget-object v3, v3, LSRCGA/MainMenuScene;->quit:Ljavafx/scene/control/Button;

    move-object v4, v1

    invoke-static {v4}, LSRCGA/MainMenuScene$$Lambda$4;->lambdaFactory$(Ljavafx/stage/Stage;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Button;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 95
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, LSRCGA/MainMenuScene;->lambda$new$0(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, LSRCGA/MainMenuScene;->lambda$new$1(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, LSRCGA/MainMenuScene;->lambda$new$2(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/stage/Stage;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, LSRCGA/MainMenuScene;->lambda$new$3(Ljavafx/stage/Stage;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljavafx/event/ActionEvent;)V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "event":Ljavafx/event/ActionEvent;
    sget-object v1, LSRCGA/SRCGA_Main;->FxmlScreen:LSRCGA/FxmlScene;

    invoke-virtual {v1}, LSRCGA/FxmlScene;->Show()Z

    move-result v1

    .line 82
    return-void
.end method

.method private static synthetic lambda$new$1(Ljavafx/event/ActionEvent;)V
    .locals 0
    .param p0, "event"    # Ljavafx/event/ActionEvent;

    .prologue
    .line 86
    return-void
.end method

.method private static synthetic lambda$new$2(Ljavafx/event/ActionEvent;)V
    .locals 0
    .param p0, "event"    # Ljavafx/event/ActionEvent;

    .prologue
    .line 90
    return-void
.end method

.method private static synthetic lambda$new$3(Ljavafx/stage/Stage;Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "stage":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage;->close()V

    .line 94
    return-void
.end method


# virtual methods
.method public Show()V
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":LSRCGA/MainMenuScene;
    move-object v1, v0

    iget-object v1, v1, LSRCGA/MainMenuScene;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, LSRCGA/MainMenuScene;->vbox:Ljavafx/scene/layout/VBox;

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 98
    return-void
.end method
