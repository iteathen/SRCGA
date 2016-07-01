.class Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/PlayerTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_PlayerTimeListener"
.end annotation


# instance fields
.field theDuration:D

.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;D)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->lambda$onDurationChanged$23(D)V

    return-void
.end method

.method private synthetic lambda$onDurationChanged$23(D)V
    .locals 7

    .prologue
    .line 2571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
    move-wide v1, p1

    .local v1, "duration":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->theDuration:D

    .line 2572
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->handleDurationChanged()V

    .line 2573
    return-void
.end method


# virtual methods
.method handleDurationChanged()V
    .locals 6

    .prologue
    .line 2564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v1}, Ljavafx/scene/media/MediaPlayer;->access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;->theDuration:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/media/Media;->setDuration(Ljavafx/util/Duration;)V

    .line 2565
    return-void
.end method

.method public onDurationChanged(D)V
    .locals 7

    .prologue
    .line 2570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;
    move-wide v1, p1

    .local v1, "duration":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;D)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2574
    return-void
.end method
