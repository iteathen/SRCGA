.class final synthetic Ljavafx/scene/media/MediaView$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/media/MediaView;

.field private final arg$2:D


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaView;D)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/media/MediaView$$Lambda$6;->arg$1:Ljavafx/scene/media/MediaView;

    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Ljavafx/scene/media/MediaView$$Lambda$6;->arg$2:D

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/media/MediaView;D)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Ljavafx/scene/media/MediaView$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaView$$Lambda$6;-><init>(Ljavafx/scene/media/MediaView;D)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/media/MediaView;D)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    new-instance v3, Ljavafx/scene/media/MediaView$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaView$$Lambda$6;-><init>(Ljavafx/scene/media/MediaView;D)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$$Lambda$6;->arg$1:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/media/MediaView$$Lambda$6;->arg$2:D

    invoke-static {v1, v2, v3}, Ljavafx/scene/media/MediaView;->access$lambda$5(Ljavafx/scene/media/MediaView;D)V

    return-void
.end method
