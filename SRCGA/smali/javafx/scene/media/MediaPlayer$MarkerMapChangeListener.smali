.class Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerMapChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/util/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljavafx/util/Duration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2388
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;
    move-object/from16 v2, p1

    .local v2, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+Ljava/lang/String;+Ljavafx/util/Duration;>;"
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v8}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v3, v9

    monitor-enter v8

    .line 2389
    move-object v8, v1

    :try_start_0
    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v8}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v8

    sget-object v9, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v8, v9, :cond_2

    .line 2390
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    .line 2392
    .local v4, "key":Ljava/lang/String;
    move-object v8, v4

    if-nez v8, :cond_0

    .line 2393
    move-object v8, v3

    monitor-exit v8

    .line 2414
    .end local v4    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 2395
    .restart local v4    # "key":Ljava/lang/String;
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v8}, Ljavafx/scene/media/MediaPlayer;->access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v8

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/MediaPlayer;->getMedia()Lcom/sun/media/jfxmedia/Media;

    move-result-object v8

    move-object v5, v8

    .line 2396
    .local v5, "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2397
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2402
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/media/jfxmedia/Media;->removeMarker(Ljava/lang/String;)D

    move-result-wide v8

    .line 2404
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/util/Duration;

    move-object v6, v8

    .line 2406
    .local v6, "value":Ljavafx/util/Duration;
    move-object v8, v6

    if-eqz v8, :cond_2

    move-object v8, v6

    sget-object v9, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v8, v9}, Ljavafx/util/Duration;->greaterThanOrEqualTo(Ljavafx/util/Duration;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2407
    move-object v8, v5

    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/util/Duration;

    invoke-virtual {v10}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/media/jfxmedia/Media;->addMarker(Ljava/lang/String;D)V

    .line 2409
    .line 2413
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    .end local v6    # "value":Ljavafx/util/Duration;
    :cond_2
    :goto_1
    move-object v8, v3

    monitor-exit v8

    .line 2414
    goto :goto_0

    .line 2409
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2410
    move-object v8, v5

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/media/jfxmedia/Media;->removeMarker(Ljava/lang/String;)D

    move-result-wide v8

    goto :goto_1

    .line 2413
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method
