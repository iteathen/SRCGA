.class final synthetic Ljavafx/concurrent/Task$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljavafx/concurrent/Task;


# direct methods
.method private constructor <init>(Ljavafx/concurrent/Task;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/concurrent/Task$$Lambda$2;->arg$1:Ljavafx/concurrent/Task;

    return-void
.end method

.method private static get$Lambda(Ljavafx/concurrent/Task;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/concurrent/Task$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task$$Lambda$2;-><init>(Ljavafx/concurrent/Task;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/concurrent/Task;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/concurrent/Task$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/concurrent/Task$$Lambda$2;-><init>(Ljavafx/concurrent/Task;)V

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

    iget-object v1, v1, Ljavafx/concurrent/Task$$Lambda$2;->arg$1:Ljavafx/concurrent/Task;

    invoke-static {v1}, Ljavafx/concurrent/Task;->access$lambda$1(Ljavafx/concurrent/Task;)V

    return-void
.end method
