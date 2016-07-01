.class public abstract Lcom/sun/media/jfxmedia/Media;
.super Ljava/lang/Object;
.source "Media.java"


# instance fields
.field private locator:Lcom/sun/media/jfxmedia/locator/Locator;

.field private final tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/track/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/Media;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    .line 54
    move-object v2, v1

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "locator == null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/Media;->locator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 59
    return-void
.end method


# virtual methods
.method public abstract addMarker(Ljava/lang/String;D)V
.end method

.method protected addTrack(Lcom/sun/media/jfxmedia/track/Track;)V
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/Media;
    move-object v1, p1

    .local v1, "track":Lcom/sun/media/jfxmedia/track/Track;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "track == null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 134
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 135
    move-object v4, v2

    monitor-exit v4

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public getLocator()Lcom/sun/media/jfxmedia/locator/Locator;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/Media;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/Media;->locator:Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/Media;
    return-object v0
.end method

.method public abstract getMarkers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public getTracks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/Media;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 98
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const/4 v4, 0x0

    move-object v1, v4

    .line 103
    .local v1, "returnValue":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    :goto_0
    move-object v4, v2

    monitor-exit v4

    .line 104
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/Media;
    return-object v0

    .line 101
    .end local v1    # "returnValue":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/Media;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .restart local v1    # "returnValue":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    goto :goto_0

    .line 103
    .end local v1    # "returnValue":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/track/Track;>;"
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public abstract removeAllMarkers()V
.end method

.method public abstract removeMarker(Ljava/lang/String;)D
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/Media;
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    .line 142
    .local v1, "buffer":Ljava/lang/StringBuffer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/Media;->tracks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/track/Track;

    move-object v3, v4

    .line 144
    .local v3, "track":Lcom/sun/media/jfxmedia/track/Track;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 145
    move-object v4, v1

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 146
    goto :goto_0

    .line 149
    .end local v3    # "track":Lcom/sun/media/jfxmedia/track/Track;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/Media;
    return-object v0
.end method
