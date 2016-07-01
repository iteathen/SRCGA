.class final synthetic Ljavafx/concurrent/Task$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Ljavafx/concurrent/Task;

.field private final arg$2:Z


# direct methods
.method private constructor <init>(Ljavafx/concurrent/Task;Z)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/concurrent/Task$$Lambda$1;->arg$1:Ljavafx/concurrent/Task;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Ljavafx/concurrent/Task$$Lambda$1;->arg$2:Z

    return-void
.end method

.method private static get$Lambda(Ljavafx/concurrent/Task;Z)Ljava/security/PrivilegedAction;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Ljavafx/concurrent/Task$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/concurrent/Task$$Lambda$1;-><init>(Ljavafx/concurrent/Task;Z)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/concurrent/Task;Z)Ljava/security/PrivilegedAction;
    .locals 7

    move-object v0, p0

    move v1, p1

    new-instance v2, Ljavafx/concurrent/Task$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/concurrent/Task$$Lambda$1;-><init>(Ljavafx/concurrent/Task;Z)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/concurrent/Task$$Lambda$1;->arg$1:Ljavafx/concurrent/Task;

    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/concurrent/Task$$Lambda$1;->arg$2:Z

    invoke-static {v1, v2}, Ljavafx/concurrent/Task;->access$lambda$0(Ljavafx/concurrent/Task;Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
