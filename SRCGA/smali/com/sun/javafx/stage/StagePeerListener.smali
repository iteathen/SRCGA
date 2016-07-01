.class public Lcom/sun/javafx/stage/StagePeerListener;
.super Lcom/sun/javafx/stage/WindowPeerListener;
.source "StagePeerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;
    }
.end annotation


# instance fields
.field private final stage:Ljavafx/stage/Stage;

.field private final stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;


# direct methods
.method public constructor <init>(Ljavafx/stage/Stage;Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move-object v1, p1

    .local v1, "stage":Ljavafx/stage/Stage;
    move-object v2, p2

    .local v2, "stageAccessor":Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/stage/WindowPeerListener;-><init>(Ljavafx/stage/Window;)V

    .line 47
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    .line 49
    return-void
.end method


# virtual methods
.method public changedAlwaysOnTop(Z)V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move v1, p1

    .local v1, "aot":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;->setAlwaysOnTop(Ljavafx/stage/Stage;Z)V

    .line 75
    return-void
.end method

.method public changedFullscreen(Z)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move v1, p1

    .local v1, "fs":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;->setFullScreen(Ljavafx/stage/Stage;Z)V

    .line 70
    return-void
.end method

.method public changedIconified(Z)V
    .locals 5

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move v1, p1

    .local v1, "iconified":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;->setIconified(Ljavafx/stage/Stage;Z)V

    .line 55
    return-void
.end method

.method public changedMaximized(Z)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move v1, p1

    .local v1, "maximized":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;->setMaximized(Ljavafx/stage/Stage;Z)V

    .line 60
    return-void
.end method

.method public changedResizable(Z)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/StagePeerListener;
    move v1, p1

    .local v1, "resizable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/stage/StagePeerListener;->stageAccessor:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/StagePeerListener;->stage:Ljavafx/stage/Stage;

    move v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;->setResizable(Ljavafx/stage/Stage;Z)V

    .line 65
    return-void
.end method
