.class final synthetic Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$3:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$1:Ljava/lang/Class;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$2:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$3:[Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;-><init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;-><init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V

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

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$1:Ljava/lang/Class;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$2:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$6;->arg$3:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->access$lambda$5(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;[Ljava/lang/String;)V

    return-void
.end method
