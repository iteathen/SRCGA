.class final synthetic Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final arg$1:Ljava/lang/ThreadGroup;

.field private final arg$2:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;->arg$1:Ljava/lang/ThreadGroup;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;->arg$2:Ljava/lang/Runnable;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

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

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;->arg$1:Ljava/lang/ThreadGroup;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader$$Lambda$4;->arg$2:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/sun/javafx/tk/quantum/PrismImageLoader2$AsyncImageLoader;->access$lambda$3(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
