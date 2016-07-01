.class public final Ljavafx/scene/paint/LinearGradientBuilder;
.super Ljava/lang/Object;
.source "LinearGradientBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/paint/LinearGradient;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cycleMethod:Ljavafx/scene/paint/CycleMethod;

.field private endX:D

.field private endY:D

.field private proportional:Z

.field private startX:D

.field private startY:D

.field private stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/scene/paint/LinearGradientBuilder;->endX:D

    .line 64
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/scene/paint/LinearGradientBuilder;->endY:D

    .line 73
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/LinearGradientBuilder;->proportional:Z

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/paint/LinearGradientBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/LinearGradientBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/LinearGradientBuilder;->build()Ljavafx/scene/paint/LinearGradient;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/paint/LinearGradient;
    .locals 16

    .prologue
    .line 120
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    new-instance v2, Ljavafx/scene/paint/LinearGradient;

    move-object v15, v2

    move-object v2, v15

    move-object v3, v15

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/paint/LinearGradientBuilder;->startX:D

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/paint/LinearGradientBuilder;->startY:D

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/paint/LinearGradientBuilder;->endX:D

    move-object v10, v0

    iget-wide v10, v10, Ljavafx/scene/paint/LinearGradientBuilder;->endY:D

    move-object v12, v0

    iget-boolean v12, v12, Ljavafx/scene/paint/LinearGradientBuilder;->proportional:Z

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/paint/LinearGradientBuilder;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/paint/LinearGradientBuilder;->stops:Ljava/util/List;

    invoke-direct/range {v3 .. v14}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;Ljava/util/List;)V

    move-object v1, v2

    .line 121
    .local v1, "x":Ljavafx/scene/paint/LinearGradient;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public cycleMethod(Ljavafx/scene/paint/CycleMethod;)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/CycleMethod;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/LinearGradientBuilder;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 52
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public endX(D)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/LinearGradientBuilder;->endX:D

    .line 61
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public endY(D)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/LinearGradientBuilder;->endY:D

    .line 70
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public proportional(Z)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/paint/LinearGradientBuilder;->proportional:Z

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public startX(D)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/LinearGradientBuilder;->startX:D

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public startY(D)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/LinearGradientBuilder;->startY:D

    .line 97
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public stops(Ljava/util/List;)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)",
            "Ljavafx/scene/paint/LinearGradientBuilder;"
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/LinearGradientBuilder;->stops:Ljava/util/List;

    .line 106
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method

.method public varargs stops([Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/LinearGradientBuilder;
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/LinearGradientBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/paint/Stop;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/paint/LinearGradientBuilder;->stops(Ljava/util/List;)Ljavafx/scene/paint/LinearGradientBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/LinearGradientBuilder;
    return-object v0
.end method
