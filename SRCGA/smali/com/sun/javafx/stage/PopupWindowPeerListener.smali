.class public Lcom/sun/javafx/stage/PopupWindowPeerListener;
.super Lcom/sun/javafx/stage/WindowPeerListener;
.source "PopupWindowPeerListener.java"


# instance fields
.field private final popupWindow:Ljavafx/stage/PopupWindow;


# direct methods
.method public constructor <init>(Ljavafx/stage/PopupWindow;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/PopupWindowPeerListener;
    move-object v1, p1

    .local v1, "popupWindow":Ljavafx/stage/PopupWindow;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/stage/WindowPeerListener;-><init>(Ljavafx/stage/Window;)V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/stage/PopupWindowPeerListener;->popupWindow:Ljavafx/stage/PopupWindow;

    .line 40
    return-void
.end method


# virtual methods
.method public changedFocused(ZLcom/sun/javafx/tk/FocusCause;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/PopupWindowPeerListener;
    move v1, p1

    .local v1, "cf":Z
    move-object v2, p2

    .local v2, "cause":Lcom/sun/javafx/tk/FocusCause;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/PopupWindowPeerListener;->popupWindow:Ljavafx/stage/PopupWindow;

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/PopupWindow;->setFocused(Z)V

    .line 49
    return-void
.end method

.method public changedFullscreen(Z)V
    .locals 0
    .param p1, "fs"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public changedIconified(Z)V
    .locals 0
    .param p1, "iconified"    # Z

    .prologue
    .line 59
    return-void
.end method

.method public changedLocation(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 55
    return-void
.end method

.method public changedMaximized(Z)V
    .locals 0
    .param p1, "maximized"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public changedResizable(Z)V
    .locals 0
    .param p1, "resizable"    # Z

    .prologue
    .line 67
    return-void
.end method

.method public closing()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public focusUngrab()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
