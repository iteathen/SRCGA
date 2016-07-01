.class public Ljavafx/scene/input/ClipboardContent;
.super Ljava/util/HashMap;
.source "ClipboardContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljavafx/scene/input/DataFormat;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final getRtf()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return-object v0
.end method

.method public final hasFiles()Z
    .locals 3

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final hasHtml()Z
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final hasImage()Z
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final hasRtf()Z
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final hasString()Z
    .locals 3

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final hasUrl()Z
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/ClipboardContent;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final putFiles(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 260
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 264
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 262
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final putFilesByPath(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 277
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 278
    .local v4, "path":Ljava/lang/String;
    move-object v5, v2

    new-instance v6, Ljava/io/File;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 279
    goto :goto_0

    .line 280
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/input/ClipboardContent;->putFiles(Ljava/util/List;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0
.end method

.method public final putHtml(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "html":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 139
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 141
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final putImage(Ljavafx/scene/image/Image;)Z
    .locals 5

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "i":Ljavafx/scene/image/Image;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 220
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 224
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 222
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final putRtf(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "rtf":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 178
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 180
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final putString(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 61
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 63
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final putUrl(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/ClipboardContent;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 100
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v2, v3}, Ljavafx/scene/input/ClipboardContent;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    return v0

    .line 102
    .restart local v0    # "this":Ljavafx/scene/input/ClipboardContent;
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/input/ClipboardContent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
