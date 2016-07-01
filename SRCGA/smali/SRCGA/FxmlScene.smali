.class public LSRCGA/FxmlScene;
.super Ljava/lang/Object;
.source "FxmlScene.java"


# instance fields
.field FXMLDoc:Ljavafx/scene/Parent;

.field failed:Z

.field stage:Ljavafx/stage/Stage;


# direct methods
.method public constructor <init>(Ljavafx/stage/Stage;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":LSRCGA/FxmlScene;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move-object v2, p2

    .local v2, "resource":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, LSRCGA/FxmlScene;->failed:Z

    .line 19
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    .line 23
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, LSRCGA/FxmlScene;->stage:Ljavafx/stage/Stage;

    .line 26
    move-object v4, v0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-static {v5}, Ljavafx/fxml/FXMLLoader;->load(Ljava/net/URL;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Parent;

    iput-object v5, v4, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    .line 27
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    invoke-static {}, LSRCGA/FxmlScene$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Scene;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 39
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 35
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, LSRCGA/FxmlScene;->failed:Z

    goto :goto_0
.end method

.method public constructor <init>(Ljavafx/stage/Stage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":LSRCGA/FxmlScene;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move-object v2, p2

    .local v2, "resource":Ljava/lang/String;
    move-object v3, p3

    .local v3, "controller":Ljava/lang/Object;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, LSRCGA/FxmlScene;->failed:Z

    .line 19
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    .line 42
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, LSRCGA/FxmlScene;->stage:Ljavafx/stage/Stage;

    .line 44
    :try_start_0
    new-instance v5, Ljavafx/fxml/FXMLLoader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/fxml/FXMLLoader;-><init>(Ljava/net/URL;)V

    move-object v4, v5

    .line 45
    .local v4, "t":Ljavafx/fxml/FXMLLoader;
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/fxml/FXMLLoader;->load()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Parent;

    iput-object v6, v5, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    .line 46
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    invoke-virtual {v5, v6}, Ljavafx/fxml/FXMLLoader;->setRoot(Ljava/lang/Object;)V

    .line 47
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljavafx/fxml/FXMLLoader;->setController(Ljava/lang/Object;)V

    .line 49
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    invoke-static {}, LSRCGA/FxmlScene$$Lambda$2;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Scene;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 62
    .end local v4    # "t":Ljavafx/fxml/FXMLLoader;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 58
    .local v4, "e":Ljava/lang/Exception;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, LSRCGA/FxmlScene;->failed:Z

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/input/KeyEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, LSRCGA/FxmlScene;->lambda$new$0(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/input/KeyEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, LSRCGA/FxmlScene;->lambda$new$1(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljavafx/scene/input/KeyEvent;)V
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v1

    sget-object v2, Ljavafx/scene/input/KeyCode;->BACK_SPACE:Ljavafx/scene/input/KeyCode;

    if-ne v1, v2, :cond_0

    .line 29
    sget-object v1, LSRCGA/SRCGA_Main;->MainMenuScreen:LSRCGA/MainMenuScene;

    invoke-virtual {v1}, LSRCGA/MainMenuScene;->Show()V

    .line 31
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Ljavafx/scene/input/KeyEvent;)V
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/KeyEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v1

    sget-object v2, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v1, v2, :cond_0

    .line 51
    sget-object v1, LSRCGA/SRCGA_Main;->MainMenuScreen:LSRCGA/MainMenuScene;

    invoke-virtual {v1}, LSRCGA/MainMenuScene;->Show()V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public Show()Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":LSRCGA/FxmlScene;
    move-object v1, v0

    iget-boolean v1, v1, LSRCGA/FxmlScene;->failed:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    if-eqz v1, :cond_0

    .line 66
    move-object v1, v0

    iget-object v1, v1, LSRCGA/FxmlScene;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, LSRCGA/FxmlScene;->FXMLDoc:Ljavafx/scene/Parent;

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 67
    const/4 v1, 0x1

    move v0, v1

    .line 69
    .end local v0    # "this":LSRCGA/FxmlScene;
    :goto_0
    return v0

    .restart local v0    # "this":LSRCGA/FxmlScene;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
