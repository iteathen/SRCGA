.class public Lcom/sun/javafx/stage/EmbeddedWindow;
.super Ljavafx/stage/Window;
.source "EmbeddedWindow.java"


# instance fields
.field private host:Lcom/sun/javafx/embed/HostInterface;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/embed/HostInterface;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/EmbeddedWindow;
    move-object v1, p1

    .local v1, "host":Lcom/sun/javafx/embed/HostInterface;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Window;-><init>()V

    .line 44
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/stage/EmbeddedWindow;->host:Lcom/sun/javafx/embed/HostInterface;

    .line 45
    return-void
.end method


# virtual methods
.method protected impl_visibleChanging(Z)V
    .locals 8

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/EmbeddedWindow;
    move v1, p1

    .local v1, "visible":Z
    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Ljavafx/stage/Window;->impl_visibleChanging(Z)V

    .line 64
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    move-object v2, v3

    .line 65
    .local v2, "toolkit":Lcom/sun/javafx/tk/Toolkit;
    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/stage/EmbeddedWindow;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-nez v3, :cond_0

    .line 67
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/stage/EmbeddedWindow;->host:Lcom/sun/javafx/embed/HostInterface;

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/stage/WindowHelper;->getAccessControlContext(Ljavafx/stage/Window;)Ljava/security/AccessControlContext;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/tk/Toolkit;->createTKEmbeddedStage(Lcom/sun/javafx/embed/HostInterface;Ljava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/stage/EmbeddedWindow;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    .line 68
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/stage/WindowPeerListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/stage/WindowPeerListener;-><init>(Ljavafx/stage/Window;)V

    iput-object v4, v3, Lcom/sun/javafx/stage/EmbeddedWindow;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    .line 70
    :cond_0
    return-void
.end method

.method public final setScene(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/EmbeddedWindow;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/stage/Window;->setScene(Ljavafx/scene/Scene;)V

    .line 52
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/stage/EmbeddedWindow;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/stage/Window;->show()V

    .line 59
    return-void
.end method
