.class final synthetic Ljavafx/scene/chart/XYChart$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavafx/collections/ListChangeListener;


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

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$$Lambda$1;->arg$1:Ljavafx/scene/chart/XYChart;

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$$Lambda$1;-><init>(Ljavafx/scene/chart/XYChart;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/chart/XYChart;)Ljavafx/collections/ListChangeListener;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$$Lambda$1;-><init>(Ljavafx/scene/chart/XYChart;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/XYChart$$Lambda$1;->arg$1:Ljavafx/scene/chart/XYChart;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/chart/XYChart;->access$lambda$0(Ljavafx/scene/chart/XYChart;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method
