.class final Lcom/sun/javafx/tk/LocalClipboard;
.super Ljava/lang/Object;
.source "LocalClipboard.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKClipboard;


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/LocalClipboard;
    return-object v0
.end method

.method public getContentTypes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    new-instance v1, Ljava/util/HashSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    .line 54
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 53
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/LocalClipboard;
    return-object v0
.end method

.method public getDragView()Ljavafx/scene/image/Image;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getDragViewOffsetX()D
    .locals 4

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getDragViewOffsetY()D
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public getTransferModes()Ljava/util/Set;
    .locals 4
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
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public hasContent(Ljavafx/scene/input/DataFormat;)Z
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/LocalClipboard;
    return v0
.end method

.method public varargs putContent([Ljavafx/util/Pair;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/util/Pair",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-object v1, p1

    .local v1, "content":[Ljavafx/util/Pair;, "[Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 60
    .local v5, "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 61
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Clipboard.putContent: null data format"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 64
    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 65
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Clipboard.putContent: null data"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 72
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 73
    .restart local v5    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/LocalClipboard;->values:Ljava/util/Map;

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 76
    .end local v5    # "pair":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_3
    const/4 v6, 0x1

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/tk/LocalClipboard;
    return v0
.end method

.method public setDragView(Ljavafx/scene/image/Image;)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public setDragViewOffsetX(D)V
    .locals 7

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-wide v2, p1

    .local v2, "offsetX":D
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public setDragViewOffsetY(D)V
    .locals 7

    .prologue
    .line 106
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/LocalClipboard;
    move-wide v2, p1

    .local v2, "offsetY":D
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public setSecurityContext(Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "ctx"    # Ljava/security/AccessControlContext;

    .prologue
    .line 49
    return-void
.end method
