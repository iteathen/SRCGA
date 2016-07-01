.class Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/MediaErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_MediaErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 2610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move v2, p2

    .local v2, "errorCode":I
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Ljavafx/scene/media/MediaException;->getMediaException(Ljava/lang/Object;ILjava/lang/String;)Ljavafx/scene/media/MediaException;

    move-result-object v5

    move-object v4, v5

    .line 2612
    .local v4, "error":Ljavafx/scene/media/MediaException;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->handleError(Ljavafx/scene/media/MediaException;)V

    .line 2613
    return-void
.end method
