.class final synthetic Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Ljavafx/scene/chart/StackedAreaChart;

.field private final arg$2:Ljavafx/scene/Node;

.field private final arg$3:Ljavafx/scene/chart/XYChart$Series;

.field private final arg$4:Ljavafx/scene/chart/XYChart$Data;


# direct methods
.method private constructor <init>(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V
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

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$1:Ljavafx/scene/chart/StackedAreaChart;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$2:Ljavafx/scene/Node;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$3:Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$4:Ljavafx/scene/chart/XYChart$Data;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;-><init>(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    move-object v0, v4

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)Ljavafx/event/EventHandler;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;-><init>(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;)V

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 7
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$1:Ljavafx/scene/chart/StackedAreaChart;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$2:Ljavafx/scene/Node;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$3:Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/chart/StackedAreaChart$$Lambda$3;->arg$4:Ljavafx/scene/chart/XYChart$Data;

    move-object v6, v1

    check-cast v6, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/scene/chart/StackedAreaChart;->access$lambda$2(Ljavafx/scene/chart/StackedAreaChart;Ljavafx/scene/Node;Ljavafx/scene/chart/XYChart$Series;Ljavafx/scene/chart/XYChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method
