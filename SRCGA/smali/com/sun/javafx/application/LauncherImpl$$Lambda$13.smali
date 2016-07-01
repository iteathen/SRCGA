.class final synthetic Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/Throwable;

.field private final arg$3:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$1:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$2:Ljava/lang/Throwable;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/Runnable;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

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

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$1:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$2:Ljava/lang/Throwable;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$13;->arg$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/application/LauncherImpl;->access$lambda$12(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
