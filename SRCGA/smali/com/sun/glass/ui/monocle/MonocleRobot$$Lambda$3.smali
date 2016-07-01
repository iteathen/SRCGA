.class final synthetic Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:I

.field private final arg$2:I


# direct methods
.method private constructor <init>(II)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;->arg$1:I

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;->arg$2:I

    return-void
.end method

.method private static get$Lambda(II)Ljava/lang/Runnable;
    .locals 7

    move v0, p0

    move v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;-><init>(II)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(II)Ljava/lang/Runnable;
    .locals 7

    move v0, p0

    move v1, p1

    new-instance v2, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;-><init>(II)V

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

    iget v1, v1, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;->arg$1:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$3;->arg$2:I

    invoke-static {v1, v2}, Lcom/sun/glass/ui/monocle/MonocleRobot;->access$lambda$2(II)V

    return-void
.end method
