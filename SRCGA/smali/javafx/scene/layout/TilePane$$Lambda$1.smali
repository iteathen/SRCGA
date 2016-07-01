.class final synthetic Ljavafx/scene/layout/TilePane$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final arg$1:D


# direct methods
.method private constructor <init>(D)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/layout/TilePane$$Lambda$1;->arg$1:D

    return-void
.end method

.method private static get$Lambda(D)Ljava/util/function/Function;
    .locals 8

    move-wide v0, p0

    new-instance v2, Ljavafx/scene/layout/TilePane$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$$Lambda$1;-><init>(D)V

    move-object v0, v2

    return-object v0
.end method

.method public static lambdaFactory$(D)Ljava/util/function/Function;
    .locals 8

    move-wide v0, p0

    new-instance v2, Ljavafx/scene/layout/TilePane$$Lambda$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-wide v4, v0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/TilePane$$Lambda$1;-><init>(D)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/layout/TilePane$$Lambda$1;->arg$1:D

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v2, v3, v4}, Ljavafx/scene/layout/TilePane;->access$lambda$0(DLjava/lang/Integer;)Ljava/lang/Double;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
