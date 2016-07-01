.class final synthetic Lcom/sun/glass/ui/GestureSupport$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;


# instance fields
.field private final arg$1:Lcom/sun/glass/ui/GestureSupport;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/GestureSupport;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;->arg$1:Lcom/sun/glass/ui/GestureSupport;

    return-void
.end method

.method private static get$Lambda(Lcom/sun/glass/ui/GestureSupport;)Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;-><init>(Lcom/sun/glass/ui/GestureSupport;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/sun/glass/ui/GestureSupport;)Lcom/sun/glass/ui/TouchInputSupport$TouchCountListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;-><init>(Lcom/sun/glass/ui/GestureSupport;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public touchCountChanged(Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V
    .locals 10
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/GestureSupport$$Lambda$1;->arg$1:Lcom/sun/glass/ui/GestureSupport;

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/GestureSupport;->access$lambda$0(Lcom/sun/glass/ui/GestureSupport;Lcom/sun/glass/ui/TouchInputSupport;Lcom/sun/glass/ui/View;IZ)V

    return-void
.end method
