.class Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitMediaPlayer"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer;->access$1000(Ljavafx/scene/media/MediaPlayer;)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavafx/scene/media/MediaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 532
    .line 533
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 527
    .local v1, "e":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/media/MediaException;->exceptionToMediaException(Ljava/lang/Exception;)Ljavafx/scene/media/MediaException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaPlayer;->handleError(Ljavafx/scene/media/MediaException;)V

    .line 532
    goto :goto_0

    .line 528
    .end local v1    # "e":Lcom/sun/media/jfxmedia/MediaException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 529
    .local v1, "e":Ljavafx/scene/media/MediaException;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaPlayer;->handleError(Ljavafx/scene/media/MediaException;)V

    .line 532
    goto :goto_0

    .line 530
    .end local v1    # "e":Ljavafx/scene/media/MediaException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;->this$0:Ljavafx/scene/media/MediaPlayer;

    new-instance v3, Ljavafx/scene/media/MediaException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaPlayer;->handleError(Ljavafx/scene/media/MediaException;)V

    goto :goto_0
.end method
