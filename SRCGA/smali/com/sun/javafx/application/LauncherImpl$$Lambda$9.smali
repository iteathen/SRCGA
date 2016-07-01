.class final synthetic Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final arg$2:Ljavafx/application/Application;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;->arg$2:Ljavafx/application/Application;

    return-void
.end method

.method private static get$Lambda(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)Ljava/lang/Runnable;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V

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

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$9;->arg$2:Ljavafx/application/Application;

    invoke-static {v1, v2}, Lcom/sun/javafx/application/LauncherImpl;->access$lambda$8(Ljava/util/concurrent/atomic/AtomicBoolean;Ljavafx/application/Application;)V

    return-void
.end method
