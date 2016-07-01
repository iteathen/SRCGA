.class final synthetic Ljavafx/scene/Node$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/scene/Node;

.field private final arg$2:Ljavafx/scene/SnapshotParameters;

.field private final arg$3:Ljavafx/scene/image/WritableImage;

.field private final arg$4:Ljavafx/util/Callback;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/Node$$Lambda$1;->arg$1:Ljavafx/scene/Node;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/Node$$Lambda$1;->arg$2:Ljavafx/scene/SnapshotParameters;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/Node$$Lambda$1;->arg$3:Ljavafx/scene/image/WritableImage;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/Node$$Lambda$1;->arg$4:Ljavafx/util/Callback;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/Node$$Lambda$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/Node$$Lambda$1;-><init>(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/Node$$Lambda$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/Node$$Lambda$1;-><init>(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node$$Lambda$1;->arg$1:Ljavafx/scene/Node;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node$$Lambda$1;->arg$2:Ljavafx/scene/SnapshotParameters;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node$$Lambda$1;->arg$3:Ljavafx/scene/image/WritableImage;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node$$Lambda$1;->arg$4:Ljavafx/util/Callback;

    invoke-static {v1, v2, v3, v4}, Ljavafx/scene/Node;->access$lambda$0(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V

    return-void
.end method
