.class Ljavafx/scene/media/MediaPlayer$_MarkerListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/MarkerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_MarkerListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MarkerListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_MarkerListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MarkerListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_MarkerListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_MarkerListener;Lcom/sun/media/jfxmedia/events/MarkerEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer$_MarkerListener;->lambda$onMarker$14(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V

    return-void
.end method

.method private synthetic lambda$onMarker$14(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V
    .locals 12

    .prologue
    .line 2426
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer$_MarkerListener;
    move-object v2, p1

    .local v2, "evt":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/events/MarkerEvent;->getPresentationTime()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v3, v4

    .line 2427
    .local v3, "markerTime":Ljavafx/util/Duration;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$_MarkerListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getOnMarker()Ljavafx/event/EventHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2428
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$_MarkerListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getOnMarker()Ljavafx/event/EventHandler;

    move-result-object v4

    new-instance v5, Ljavafx/scene/media/MediaMarkerEvent;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljavafx/util/Pair;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/events/MarkerEvent;->getMarkerName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Ljavafx/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Ljavafx/scene/media/MediaMarkerEvent;-><init>(Ljavafx/util/Pair;)V

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 2430
    :cond_0
    return-void
.end method


# virtual methods
.method public onMarker(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V
    .locals 4

    .prologue
    .line 2425
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MarkerListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer$_MarkerListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_MarkerListener;Lcom/sun/media/jfxmedia/events/MarkerEvent;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2431
    return-void
.end method
