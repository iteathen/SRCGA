.class final synthetic Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;->arg$1:I

    return-void
.end method

.method private static get$Lambda(I)Ljava/lang/Runnable;
    .locals 5

    move v0, p0

    new-instance v1, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;-><init>(I)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(I)Ljava/lang/Runnable;
    .locals 5

    move v0, p0

    new-instance v1, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;-><init>(I)V

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

    iget v1, v1, Lcom/sun/glass/ui/monocle/MonocleRobot$$Lambda$2;->arg$1:I

    invoke-static {v1}, Lcom/sun/glass/ui/monocle/MonocleRobot;->access$lambda$1(I)V

    return-void
.end method
