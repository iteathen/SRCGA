.class final synthetic Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Ljavafx/collections/ObservableList;


# direct methods
.method private constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;->arg$1:Ljavafx/collections/ObservableList;

    return-void
.end method

.method private static get$Lambda(Ljavafx/collections/ObservableList;)Ljava/util/Comparator;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/collections/ObservableList;)Ljava/util/Comparator;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/XYChart$Series$1$$Lambda$1;->arg$1:Ljavafx/collections/ObservableList;

    move-object v4, v1

    check-cast v4, Ljavafx/scene/chart/XYChart$Data;

    move-object v5, v2

    check-cast v5, Ljavafx/scene/chart/XYChart$Data;

    invoke-static {v3, v4, v5}, Ljavafx/scene/chart/XYChart$Series$1;->access$lambda$0(Ljavafx/collections/ObservableList;Ljavafx/scene/chart/XYChart$Data;Ljavafx/scene/chart/XYChart$Data;)I

    move-result v3

    move v0, v3

    return v0
.end method
