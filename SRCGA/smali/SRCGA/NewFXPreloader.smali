.class public LSRCGA/NewFXPreloader;
.super Ljavafx/application/Preloader;
.source "NewFXPreloader.java"


# instance fields
.field bar:Ljavafx/scene/control/ProgressBar;

.field stage:Ljavafx/stage/Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":LSRCGA/NewFXPreloader;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/application/Preloader;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, LSRCGA/NewFXPreloader;->lambda$start$0()V

    return-void
.end method

.method private createPreloaderScene()Ljavafx/scene/Scene;
    .locals 12

    .prologue
    .line 31
    move-object v1, p0

    .local v1, "this":LSRCGA/NewFXPreloader;
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/ProgressBar;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljavafx/scene/control/ProgressBar;-><init>()V

    iput-object v4, v3, LSRCGA/NewFXPreloader;->bar:Ljavafx/scene/control/ProgressBar;

    .line 32
    new-instance v3, Ljavafx/scene/layout/BorderPane;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljavafx/scene/layout/BorderPane;-><init>()V

    move-object v2, v3

    .line 33
    .local v2, "p":Ljavafx/scene/layout/BorderPane;
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, LSRCGA/NewFXPreloader;->bar:Ljavafx/scene/control/ProgressBar;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/BorderPane;->setCenter(Ljavafx/scene/Node;)V

    .line 34
    new-instance v3, Ljavafx/scene/Scene;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v2

    const-wide/high16 v6, 0x407e000000000000L    # 480.0

    const-wide/high16 v8, 0x4084000000000000L    # 640.0

    sget-object v10, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct/range {v4 .. v10}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;)V

    move-object v1, v3

    .end local v1    # "this":LSRCGA/NewFXPreloader;
    return-object v1
.end method

.method private static synthetic lambda$start$0()V
    .locals 7

    .prologue
    .line 47
    new-instance v0, LSRCGA/FxmlScene;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    sget-object v2, LSRCGA/SRCGA_Main;->preloader_stage:Ljavafx/stage/Stage;

    const-string v3, "BuildMode.fxml"

    new-instance v4, LSRCGA/ActiveSkillSelectionWindowController;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, LSRCGA/ActiveSkillSelectionWindowController;-><init>()V

    invoke-direct {v1, v2, v3, v4}, LSRCGA/FxmlScene;-><init>(Ljavafx/stage/Stage;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, LSRCGA/SRCGA_Main;->FxmlScreen:LSRCGA/FxmlScene;

    .line 48
    return-void
.end method


# virtual methods
.method public handleProgressNotification(Ljavafx/application/Preloader$ProgressNotification;)V
    .locals 6

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":LSRCGA/NewFXPreloader;
    move-object v2, p1

    .local v2, "pn":Ljavafx/application/Preloader$ProgressNotification;
    move-object v3, v1

    iget-object v3, v3, LSRCGA/NewFXPreloader;->bar:Ljavafx/scene/control/ProgressBar;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/application/Preloader$ProgressNotification;->getProgress()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ProgressBar;->setProgress(D)V

    .line 63
    return-void
.end method

.method public handleStateChangeNotification(Ljavafx/application/Preloader$StateChangeNotification;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":LSRCGA/NewFXPreloader;
    move-object v1, p1

    .local v1, "scn":Ljavafx/application/Preloader$StateChangeNotification;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/application/Preloader$StateChangeNotification;->getType()Ljavafx/application/Preloader$StateChangeNotification$Type;

    move-result-object v2

    sget-object v3, Ljavafx/application/Preloader$StateChangeNotification$Type;->BEFORE_START:Ljavafx/application/Preloader$StateChangeNotification$Type;

    if-ne v2, v3, :cond_0

    .line 58
    :cond_0
    return-void
.end method

.method public start(Ljavafx/stage/Stage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":LSRCGA/NewFXPreloader;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, LSRCGA/NewFXPreloader;->stage:Ljavafx/stage/Stage;

    .line 40
    move-object v3, v1

    sput-object v3, LSRCGA/SRCGA_Main;->preloader_stage:Ljavafx/stage/Stage;

    .line 41
    move-object v3, v0

    invoke-direct {v3}, LSRCGA/NewFXPreloader;->createPreloaderScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 42
    .local v2, "myscene":Ljavafx/scene/Scene;
    move-object v3, v2

    sput-object v3, LSRCGA/SRCGA_Main;->preloader_scene:Ljavafx/scene/Scene;

    .line 43
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "splash.css"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 44
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 46
    invoke-static {}, LSRCGA/NewFXPreloader$$Lambda$1;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 50
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/Stage;->show()V

    .line 51
    return-void
.end method
