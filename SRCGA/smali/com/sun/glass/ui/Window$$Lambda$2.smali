.class final synthetic Lcom/sun/glass/ui/Window$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/Window$$Lambda$2;->arg$1:Ljava/lang/Runnable;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/glass/ui/Window$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Window$$Lambda$2;-><init>(Ljava/lang/Runnable;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 5

    move-object v0, p0

    new-instance v1, Lcom/sun/glass/ui/Window$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Window$$Lambda$2;-><init>(Ljava/lang/Runnable;)V

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

    iget-object v1, v1, Lcom/sun/glass/ui/Window$$Lambda$2;->arg$1:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/sun/glass/ui/Window;->access$lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method