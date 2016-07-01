.class final synthetic Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final arg$1:Ljava/lang/ThreadGroup;


# direct methods
.method private constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;->arg$1:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/ThreadGroup;)Ljava/util/concurrent/ThreadFactory;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;-><init>(Ljava/lang/ThreadGroup;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/ThreadGroup;)Ljava/util/concurrent/ThreadFactory;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;-><init>(Ljava/lang/ThreadGroup;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$3;->arg$1:Ljava/lang/ThreadGroup;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->access$lambda$2(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
