.class final synthetic Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;

.field private final arg$2:Lcom/sun/media/jfxmedia/events/PlayerStateEvent;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;->arg$1:Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;->arg$2:Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;-><init>(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;-><init>(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;->arg$1:Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;->arg$2:Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->access$lambda$7(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    return-void
.end method
