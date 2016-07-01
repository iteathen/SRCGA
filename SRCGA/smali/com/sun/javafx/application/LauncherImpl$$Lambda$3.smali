.class final synthetic Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Ljava/lang/ClassLoader;

.field private final arg$3:Ljava/util/concurrent/atomic/AtomicReference;

.field private final arg$4:Ljava/lang/String;

.field private final arg$5:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$1:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$2:Ljava/lang/ClassLoader;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$3:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$4:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$5:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Runnable;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Runnable;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    new-instance v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$1:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$2:Ljava/lang/ClassLoader;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$3:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$4:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/application/LauncherImpl$$Lambda$3;->arg$5:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sun/javafx/application/LauncherImpl;->access$lambda$2(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
