.class final synthetic Ljavafx/scene/chart/XYChart$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# instance fields
.field private final arg$1:Ljavafx/scene/chart/XYChart;


# direct methods
.method private constructor <init>(Ljavafx/scene/chart/XYChart;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$$Lambda$4;->arg$1:Ljavafx/scene/chart/XYChart;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/value/ChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$$Lambda$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$$Lambda$4;-><init>(Ljavafx/scene/chart/XYChart;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/beans/value/ChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$$Lambda$4;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$$Lambda$4;-><init>(Ljavafx/scene/chart/XYChart;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/XYChart$$Lambda$4;->arg$1:Ljavafx/scene/chart/XYChart;

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-static {v4, v5, v6, v7}, Ljavafx/scene/chart/XYChart;->access$lambda$3(Ljavafx/scene/chart/XYChart;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
