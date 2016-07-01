.class final Lcom/sun/javafx/tk/quantum/EmbeddedState;
.super Lcom/sun/javafx/tk/quantum/SceneState;
.source "EmbeddedState.java"


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    move-object v1, p1

    .local v1, "vs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/SceneState;-><init>(Lcom/sun/javafx/tk/quantum/GlassScene;)V

    .line 40
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/EmbeddedState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedState;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/EmbeddedState;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    move-object v2, v0

    invoke-super {v2}, Lcom/sun/javafx/tk/quantum/SceneState;->update()V

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    check-cast v2, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->getRenderScale()F

    move-result v2

    move v1, v2

    .line 86
    .local v1, "scale":F
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/tk/quantum/EmbeddedState;->update(FFF)V

    .line 87
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/EmbeddedState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    if-eqz v2, :cond_0

    .line 91
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedState;->isWindowVisible:Z

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/EmbeddedState;->isWindowMinimized:Z

    .line 94
    :cond_0
    return-void
.end method

.method public uploadPixels(Lcom/sun/prism/PixelSource;)V
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/EmbeddedState;
    move-object v1, p1

    .local v1, "source":Lcom/sun/prism/PixelSource;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/EmbeddedState;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/PixelSource;->getLatestPixels()Lcom/sun/glass/ui/Pixels;

    move-result-object v5

    move-object v2, v5

    .line 51
    .local v2, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 53
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/EmbeddedState;->scene:Lcom/sun/javafx/tk/quantum/GlassScene;

    check-cast v5, Lcom/sun/javafx/tk/quantum/EmbeddedScene;

    move-object v3, v5

    .line 55
    .local v3, "escene":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/EmbeddedScene;->uploadPixels(Lcom/sun/glass/ui/Pixels;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/sun/prism/PixelSource;->doneWithPixels(Lcom/sun/glass/ui/Pixels;)V

    .line 58
    .line 60
    .line 63
    .end local v2    # "pixels":Lcom/sun/glass/ui/Pixels;
    .end local v3    # "escene":Lcom/sun/javafx/tk/quantum/EmbeddedScene;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v2    # "pixels":Lcom/sun/glass/ui/Pixels;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/sun/prism/PixelSource;->doneWithPixels(Lcom/sun/glass/ui/Pixels;)V

    move-object v5, v4

    throw v5

    .line 61
    .end local v2    # "pixels":Lcom/sun/glass/ui/Pixels;
    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/PixelSource;->skipLatestPixels()V

    goto :goto_0
.end method
