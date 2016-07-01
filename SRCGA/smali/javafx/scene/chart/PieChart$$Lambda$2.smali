.class final synthetic Ljavafx/scene/chart/PieChart$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/event/EventHandler;


# instance fields
.field private final arg$1:Ljavafx/scene/chart/PieChart;

.field private final arg$2:Ljavafx/scene/text/Text;

.field private final arg$3:Ljavafx/scene/chart/PieChart$Data;


# direct methods
.method private constructor <init>(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$1:Ljavafx/scene/chart/PieChart;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$2:Ljavafx/scene/text/Text;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$3:Ljavafx/scene/chart/PieChart$Data;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/chart/PieChart$$Lambda$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart$$Lambda$2;-><init>(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)V

    move-object v0, v3

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)Ljavafx/event/EventHandler;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Ljavafx/scene/chart/PieChart$$Lambda$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/PieChart$$Lambda$2;-><init>(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;)V

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

    iget-object v2, v2, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$1:Ljavafx/scene/chart/PieChart;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$2:Ljavafx/scene/text/Text;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/PieChart$$Lambda$2;->arg$3:Ljavafx/scene/chart/PieChart$Data;

    move-object v5, v1

    check-cast v5, Ljavafx/event/ActionEvent;

    invoke-static {v2, v3, v4, v5}, Ljavafx/scene/chart/PieChart;->access$lambda$1(Ljavafx/scene/chart/PieChart;Ljavafx/scene/text/Text;Ljavafx/scene/chart/PieChart$Data;Ljavafx/event/ActionEvent;)V

    return-void
.end method
