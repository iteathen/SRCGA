.class final synthetic Ljavafx/scene/media/MediaPlayer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$$Lambda$1;->arg$1:Ljavafx/scene/media/MediaPlayer;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/media/MediaPlayer$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer$$Lambda$1;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/media/MediaPlayer$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer$$Lambda$1;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$$Lambda$1;->arg$1:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v1}, Ljavafx/scene/media/MediaPlayer;->access$lambda$0(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method
