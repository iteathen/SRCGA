.class final synthetic Ljavafx/scene/chart/XYChart$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Ljavafx/scene/chart/XYChart;

.field private final arg$2:Ljava/util/List;

.field private final arg$3:Ljavafx/scene/chart/XYChart$Series;


# direct methods
.method private constructor <init>(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$1:Ljavafx/scene/chart/XYChart;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$2:Ljava/util/List;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$3:Ljavafx/scene/chart/XYChart$Series;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/chart/XYChart$$Lambda$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart$$Lambda$5;-><init>(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/chart/XYChart$$Lambda$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart$$Lambda$5;-><init>(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public handle(Ljavafx/event/Event;)V
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$1:Ljavafx/scene/chart/XYChart;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$2:Ljava/util/List;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$$Lambda$5;->arg$3:Ljavafx/scene/chart/XYChart$Series;

    move-object v5, v1

    check-cast v5, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3, v4, v5}, Ljavafx/scene/chart/XYChart;->access$lambda$4(Ljavafx/scene/chart/XYChart;Ljava/util/List;Ljavafx/scene/chart/XYChart$Series;Ljavafx/event/ActionEvent;)V

    return-void
.end method
