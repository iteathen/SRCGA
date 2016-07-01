.class final synthetic Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/Class;

.field private final arg$2:Ljava/lang/Class;

.field private final arg$3:[Ljava/lang/String;

.field private final arg$4:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
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

    iput-object v6, v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$1:Ljava/lang/Class;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$2:Ljava/lang/Class;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$3:[Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$4:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

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

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$1:Ljava/lang/Class;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$2:Ljava/lang/Class;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$3:[Ljava/lang/String;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$2;->arg$4:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/javafx/application/LauncherImpl;->access$lambda$1(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
