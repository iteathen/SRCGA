.class public final Ljavafx/scene/media/VideoTrack;
.super Ljavafx/scene/media/Track;
.source "VideoTrack.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method constructor <init>(JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/VideoTrack;
    move-wide v1, p1

    .local v1, "trackID":J
    move-object v3, p3

    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/media/Track;-><init>(JLjava/util/Map;)V

    .line 64
    move-object v5, v3

    const-string v6, "video width"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 65
    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    move-object v6, v4

    if-eq v5, v6, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 66
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Ljavafx/scene/media/VideoTrack;->width:I

    .line 69
    :cond_0
    move-object v5, v3

    const-string v6, "video height"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 70
    const/4 v5, 0x0

    move-object v6, v4

    if-eq v5, v6, :cond_1

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 71
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Ljavafx/scene/media/VideoTrack;->height:I

    .line 73
    :cond_1
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/VideoTrack;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/VideoTrack;->height:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/VideoTrack;
    return v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/VideoTrack;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/VideoTrack;->width:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/VideoTrack;
    return v0
.end method
