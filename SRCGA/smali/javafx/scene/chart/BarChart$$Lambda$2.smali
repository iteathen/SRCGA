.class final synthetic Ljavafx/scene/chart/BarChart$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Ljavafx/scene/chart/BarChart;

.field private final arg$2:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method private constructor <init>(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/chart/BarChart$$Lambda$2;->arg$1:Ljavafx/scene/chart/BarChart;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/chart/BarChart$$Lambda$2;->arg$2:Ljavafx/scene/chart/XYChart$Series;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/chart/BarChart$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BarChart$$Lambda$2;-><init>(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljavafx/scene/chart/BarChart$$Lambda$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/BarChart$$Lambda$2;-><init>(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/BarChart$$Lambda$2;->arg$1:Ljavafx/scene/chart/BarChart;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/BarChart$$Lambda$2;->arg$2:Ljavafx/scene/chart/XYChart$Series;

    move-object v4, v1

    check-cast v4, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3, v4}, Ljavafx/scene/chart/BarChart;->access$lambda$1(Ljavafx/scene/chart/BarChart;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method
