.class public Lcom/sun/javafx/stage/WindowPeerListener;
.super Ljava/lang/Object;
.source "WindowPeerListener.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKStageListener;


# instance fields
.field private final window:Ljavafx/stage/Window;


# direct methods
.method public constructor <init>(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    .line 45
    return-void
.end method


# virtual methods
.method public changedAlwaysOnTop(Z)V
    .locals 0
    .param p1, "aot"    # Z

    .prologue
    .line 80
    return-void
.end method

.method public changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move v1, p1

    .local v1, "focused":Z
    move-object v2, p2

    .local v2, "cause":Lcom/sun/javafx/tk/FocusCause;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->setFocused(Z)V

    .line 60
    return-void
.end method

.method public changedFullscreen(Z)V
    .locals 0
    .param p1, "fs"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public changedIconified(Z)V
    .locals 0
    .param p1, "iconified"    # Z

    .prologue
    .line 64
    return-void
.end method

.method public changedLocation(FF)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    move v4, v1

    float-to-double v4, v4

    move v6, v2

    float-to-double v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/javafx/stage/WindowHelper;->notifyLocationChanged(Ljavafx/stage/Window;DD)V

    .line 50
    return-void
.end method

.method public changedMaximized(Z)V
    .locals 0
    .param p1, "maximized"    # Z

    .prologue
    .line 68
    return-void
.end method

.method public changedResizable(Z)V
    .locals 0
    .param p1, "resizable"    # Z

    .prologue
    .line 72
    return-void
.end method

.method public changedScreen(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move-object v1, p1

    .local v1, "from":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "to":Ljava/lang/Object;
    invoke-static {}, Lcom/sun/javafx/stage/WindowHelper;->getWindowAccessor()Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v3, v4, v5, v6}, Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;->notifyScreenChanged(Ljavafx/stage/Window;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public changedSize(FF)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "height":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    move v4, v1

    float-to-double v4, v4

    move v6, v2

    float-to-double v6, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/javafx/stage/WindowHelper;->notifySizeChanged(Ljavafx/stage/Window;DD)V

    .line 55
    return-void
.end method

.method public closed()V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    invoke-virtual {v1}, Ljavafx/stage/Window;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    invoke-virtual {v1}, Ljavafx/stage/Window;->hide()V

    .line 102
    :cond_0
    return-void
.end method

.method public closing()V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    new-instance v2, Ljavafx/stage/WindowEvent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    sget-object v5, Ljavafx/stage/WindowEvent;->WINDOW_CLOSE_REQUEST:Ljavafx/event/EventType;

    invoke-direct {v3, v4, v5}, Ljavafx/stage/WindowEvent;-><init>(Ljavafx/stage/Window;Ljavafx/event/EventType;)V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 91
    return-void
.end method

.method public focusUngrab()V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/WindowPeerListener;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/stage/WindowPeerListener;->window:Ljavafx/stage/Window;

    new-instance v2, Lcom/sun/javafx/stage/FocusUngrabEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/stage/FocusUngrabEvent;-><init>()V

    invoke-static {v1, v2}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 106
    return-void
.end method
