.class final synthetic Ljavafx/scene/layout/FlowPane$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Ljavafx/scene/layout/FlowPane$Run;


# direct methods
.method private constructor <init>(Ljavafx/scene/layout/FlowPane$Run;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/layout/FlowPane$$Lambda$1;->arg$1:Ljavafx/scene/layout/FlowPane$Run;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/layout/FlowPane$Run;)Ljava/util/function/Function;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/layout/FlowPane$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/layout/FlowPane$$Lambda$1;-><init>(Ljavafx/scene/layout/FlowPane$Run;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/layout/FlowPane$Run;)Ljava/util/function/Function;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/layout/FlowPane$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/layout/FlowPane$$Lambda$1;-><init>(Ljavafx/scene/layout/FlowPane$Run;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/FlowPane$$Lambda$1;->arg$1:Ljavafx/scene/layout/FlowPane$Run;

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljavafx/scene/layout/FlowPane;->access$lambda$0(Ljavafx/scene/layout/FlowPane$Run;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
