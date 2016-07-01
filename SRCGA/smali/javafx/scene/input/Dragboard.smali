.class public final Ljavafx/scene/input/Dragboard;
.super Ljavafx/scene/input/Clipboard;
.source "Dragboard.java"


# instance fields
.field private dataAccessRestricted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Ljavafx/scene/input/Dragboard$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/javafx/scene/input/DragboardHelper;->setDragboardAccessor(Lcom/sun/javafx/scene/input/DragboardHelper$DragboardAccessor;)V

    .line 184
    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/tk/TKClipboard;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, p1

    .local v1, "peer":Lcom/sun/javafx/tk/TKClipboard;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/input/Clipboard;-><init>(Lcom/sun/javafx/tk/TKClipboard;)V

    .line 45
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/input/Dragboard;->dataAccessRestricted:Z

    .line 49
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/input/Dragboard;Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/input/Dragboard;->lambda$static$21(Ljavafx/scene/input/Dragboard;Z)V

    return-void
.end method

.method public static impl_createDragboard(Lcom/sun/javafx/tk/TKClipboard;)Ljavafx/scene/input/Dragboard;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "peer":Lcom/sun/javafx/tk/TKClipboard;
    new-instance v1, Ljavafx/scene/input/Dragboard;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/input/Dragboard;-><init>(Lcom/sun/javafx/tk/TKClipboard;)V

    move-object v0, v1

    .end local v0    # "peer":Lcom/sun/javafx/tk/TKClipboard;
    return-object v0
.end method

.method private static synthetic lambda$static$21(Ljavafx/scene/input/Dragboard;Z)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "dragboard":Ljavafx/scene/input/Dragboard;
    move v1, p1

    .local v1, "restricted":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/input/Dragboard;->dataAccessRestricted:Z

    .line 183
    return-void
.end method


# virtual methods
.method getContentImpl(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/input/Dragboard;->dataAccessRestricted:Z

    if-eqz v3, :cond_0

    .line 54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    move-object v2, v3

    .line 55
    .local v2, "securityManager":Ljava/lang/SecurityManager;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 56
    move-object v3, v2

    new-instance v4, Ljava/security/AllPermission;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 59
    .end local v2    # "securityManager":Ljava/lang/SecurityManager;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/input/Clipboard;->getContentImpl(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-object v0
.end method

.method public getDragView()Ljavafx/scene/image/Image;
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKClipboard;->getDragView()Ljavafx/scene/image/Image;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-object v0
.end method

.method public getDragViewOffsetX()D
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKClipboard;->getDragViewOffsetX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-wide v0
.end method

.method public getDragViewOffsetY()D
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKClipboard;->getDragViewOffsetY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-wide v0
.end method

.method public final getTransferModes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/TransferMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKClipboard;->getTransferModes()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-object v0
.end method

.method public impl_getPeer()Lcom/sun/javafx/tk/TKClipboard;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Dragboard;
    return-object v0
.end method

.method public setDragView(Ljavafx/scene/image/Image;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKClipboard;->setDragView(Ljavafx/scene/image/Image;)V

    .line 119
    return-void
.end method

.method public setDragView(Ljavafx/scene/image/Image;DD)V
    .locals 10

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-wide v2, p2

    .local v2, "offsetX":D
    move-wide v4, p4

    .local v4, "offsetY":D
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/TKClipboard;->setDragView(Ljavafx/scene/image/Image;)V

    .line 104
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-wide v7, v2

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/tk/TKClipboard;->setDragViewOffsetX(D)V

    .line 105
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-wide v7, v4

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/tk/TKClipboard;->setDragViewOffsetY(D)V

    .line 106
    return-void
.end method

.method public setDragViewOffsetX(D)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-wide v1, p1

    .local v1, "offsetX":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKClipboard;->setDragViewOffsetX(D)V

    .line 131
    return-void
.end method

.method public setDragViewOffsetY(D)V
    .locals 7

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Dragboard;
    move-wide v1, p1

    .local v1, "offsetY":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/Dragboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/tk/TKClipboard;->setDragViewOffsetY(D)V

    .line 143
    return-void
.end method
