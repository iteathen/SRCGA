.class final synthetic Ljavafx/scene/layout/GridPane$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:Ljavafx/scene/layout/GridPane;

.field private final arg$2:I

.field private final arg$3:Ljavafx/scene/layout/GridPane$CompositeSize;

.field private final arg$4:D


# direct methods
.method private constructor <init>(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$1:Ljavafx/scene/layout/GridPane;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$2:I

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$3:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$4:D

    return-void
.end method

.method private static get$Lambda(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)Ljava/util/function/Function;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    new-instance v5, Ljavafx/scene/layout/GridPane$$Lambda$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/GridPane$$Lambda$2;-><init>(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)V

    move-object v0, v5

    return-object v0
.end method

.method public static lambdaFactory$(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)Ljava/util/function/Function;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    new-instance v5, Ljavafx/scene/layout/GridPane$$Lambda$2;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    move-wide v10, v3

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/layout/GridPane$$Lambda$2;-><init>(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;D)V

    move-object v0, v5

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$1:Ljavafx/scene/layout/GridPane;

    move-object v4, v1

    iget v4, v4, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$2:I

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$3:Ljavafx/scene/layout/GridPane$CompositeSize;

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/layout/GridPane$$Lambda$2;->arg$4:D

    move-object v8, v2

    check-cast v8, Ljava/lang/Integer;

    invoke-static/range {v3 .. v8}, Ljavafx/scene/layout/GridPane;->access$lambda$1(Ljavafx/scene/layout/GridPane;ILjavafx/scene/layout/GridPane$CompositeSize;DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v3

    move-object v1, v3

    return-object v1
.end method
