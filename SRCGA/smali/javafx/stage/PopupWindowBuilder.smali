.class public abstract Ljavafx/stage/PopupWindowBuilder;
.super Ljavafx/stage/WindowBuilder;
.source "PopupWindowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/stage/PopupWindowBuilder",
        "<TB;>;>",
        "Ljavafx/stage/WindowBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private autoFix:Z

.field private autoHide:Z

.field private consumeAutoHidingEvents:Z

.field private hideOnEscape:Z

.field private onAutoHide:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/WindowBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/PopupWindow;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/stage/PopupWindow;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/stage/WindowBuilder;->applyTo(Ljavafx/stage/Window;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/stage/PopupWindowBuilder;->autoFix:Z

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setAutoFix(Z)V

    .line 46
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/stage/PopupWindowBuilder;->autoHide:Z

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setAutoHide(Z)V

    .line 47
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/stage/PopupWindowBuilder;->consumeAutoHidingEvents:Z

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setConsumeAutoHidingEvents(Z)V

    .line 48
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/stage/PopupWindowBuilder;->hideOnEscape:Z

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setHideOnEscape(Z)V

    .line 49
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindowBuilder;->onAutoHide:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setOnAutoHide(Ljavafx/event/EventHandler;)V

    .line 50
    :cond_4
    return-void
.end method

.method public autoFix(Z)Ljavafx/stage/PopupWindowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/PopupWindowBuilder;->autoFix:Z

    .line 59
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/stage/PopupWindowBuilder;->__set:I

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    return-object v0
.end method

.method public autoHide(Z)Ljavafx/stage/PopupWindowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/PopupWindowBuilder;->autoHide:Z

    .line 70
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/stage/PopupWindowBuilder;->__set:I

    .line 71
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    return-object v0
.end method

.method public consumeAutoHidingEvents(Z)Ljavafx/stage/PopupWindowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/PopupWindowBuilder;->consumeAutoHidingEvents:Z

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/stage/PopupWindowBuilder;->__set:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    return-object v0
.end method

.method public hideOnEscape(Z)Ljavafx/stage/PopupWindowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/PopupWindowBuilder;->hideOnEscape:Z

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/stage/PopupWindowBuilder;->__set:I

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    return-object v0
.end method

.method public onAutoHide(Ljavafx/event/EventHandler;)Ljavafx/stage/PopupWindowBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/PopupWindowBuilder;->onAutoHide:Ljavafx/event/EventHandler;

    .line 104
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/stage/PopupWindowBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/stage/PopupWindowBuilder;->__set:I

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupWindowBuilder;, "Ljavafx/stage/PopupWindowBuilder<TB;>;"
    return-object v0
.end method
