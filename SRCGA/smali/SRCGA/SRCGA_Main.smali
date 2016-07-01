.class public LSRCGA/SRCGA_Main;
.super Ljavafx/application/Application;
.source "SRCGA_Main.java"


# static fields
.field public static FxmlScreen:LSRCGA/FxmlScene;

.field public static MainMenuScreen:LSRCGA/MainMenuScene;

.field public static preloader_scene:Ljavafx/scene/Scene;

.field public static preloader_stage:Ljavafx/stage/Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":LSRCGA/SRCGA_Main;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/application/Application;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, LSRCGA/SRCGA_Main;->launch([Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public start(Ljavafx/stage/Stage;)V
    .locals 6

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":LSRCGA/SRCGA_Main;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    sget-object v2, LSRCGA/SRCGA_Main;->preloader_stage:Ljavafx/stage/Stage;

    move-object v1, v2

    .line 26
    move-object v2, v1

    const-string v3, "Shadowrun Character Generator for Android"

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->setTitle(Ljava/lang/String;)V

    .line 30
    new-instance v2, LSRCGA/MainMenuScene;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, LSRCGA/MainMenuScene;-><init>(Ljavafx/stage/Stage;)V

    sput-object v2, LSRCGA/SRCGA_Main;->MainMenuScreen:LSRCGA/MainMenuScene;

    .line 31
    sget-object v2, LSRCGA/SRCGA_Main;->MainMenuScreen:LSRCGA/MainMenuScene;

    invoke-virtual {v2}, LSRCGA/MainMenuScene;->Show()V

    .line 32
    return-void
.end method
