.class final Ljavafx/stage/Window$1;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Lcom/sun/javafx/stage/WindowHelper$WindowAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/stage/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessControlContext(Ljavafx/stage/Window;)Ljava/security/AccessControlContext;
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Window;->acc:Ljava/security/AccessControlContext;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/Window$1;
    return-object v0
.end method

.method public getRenderScale(Ljavafx/stage/Window;)F
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v3

    .line 121
    .local v2, "peer":Lcom/sun/javafx/tk/TKStage;
    move-object v3, v2

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/stage/Window$1;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Window$1;
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKStage;->getRenderScale()F

    move-result v3

    goto :goto_0
.end method

.method public getUIScale(Ljavafx/stage/Window;)F
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v3, v1

    iget-object v3, v3, Ljavafx/stage/Window;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v2, v3

    .line 115
    .local v2, "peer":Lcom/sun/javafx/tk/TKStage;
    move-object v3, v2

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/stage/Window$1;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Window$1;
    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKStage;->getUIScale()F

    move-result v3

    goto :goto_0
.end method

.method public notifyLocationChanged(Ljavafx/stage/Window;DD)V
    .locals 12

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-wide v2, p2

    .local v2, "x":D
    move-wide/from16 v4, p4

    .local v4, "y":D
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/stage/Window;->notifyLocationChanged(DD)V

    .line 96
    return-void
.end method

.method public notifyScreenChanged(Ljavafx/stage/Window;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "from":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "to":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Ljavafx/stage/Window;->access$000(Ljavafx/stage/Window;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public notifySizeChanged(Ljavafx/stage/Window;DD)V
    .locals 12

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-wide v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move-object v6, v1

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/stage/Window;->notifySizeChanged(DD)V

    .line 103
    return-void
.end method

.method public screenProperty(Ljavafx/stage/Window;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/stage/Window;",
            ")",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/stage/Screen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Window$1;
    move-object v1, p1

    .local v1, "window":Ljavafx/stage/Window;
    move-object v2, v1

    invoke-static {v2}, Ljavafx/stage/Window;->access$100(Ljavafx/stage/Window;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/Window$1;
    return-object v0
.end method
