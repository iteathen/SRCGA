.class public final Ljavafx/scene/paint/RadialGradientBuilder;
.super Ljava/lang/Object;
.source "RadialGradientBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/paint/RadialGradient;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private centerX:D

.field private centerY:D

.field private cycleMethod:Ljavafx/scene/paint/CycleMethod;

.field private focusAngle:D

.field private focusDistance:D

.field private proportional:Z

.field private radius:D

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

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 91
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/paint/RadialGradientBuilder;->proportional:Z

    .line 100
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Ljavafx/scene/paint/RadialGradientBuilder;->radius:D

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/paint/RadialGradientBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/RadialGradientBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/paint/RadialGradientBuilder;->build()Ljavafx/scene/paint/RadialGradient;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/paint/RadialGradient;
    .locals 20

    .prologue
    .line 129
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    new-instance v4, Ljavafx/scene/paint/RadialGradient;

    move-object/from16 v19, v4

    move-object/from16 v4, v19

    move-object/from16 v5, v19

    move-object v6, v2

    iget-wide v6, v6, Ljavafx/scene/paint/RadialGradientBuilder;->focusAngle:D

    move-object v8, v2

    iget-wide v8, v8, Ljavafx/scene/paint/RadialGradientBuilder;->focusDistance:D

    move-object v10, v2

    iget-wide v10, v10, Ljavafx/scene/paint/RadialGradientBuilder;->centerX:D

    move-object v12, v2

    iget-wide v12, v12, Ljavafx/scene/paint/RadialGradientBuilder;->centerY:D

    move-object v14, v2

    iget-wide v14, v14, Ljavafx/scene/paint/RadialGradientBuilder;->radius:D

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Ljavafx/scene/paint/RadialGradientBuilder;->proportional:Z

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/paint/RadialGradientBuilder;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/paint/RadialGradientBuilder;->stops:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-direct/range {v5 .. v18}, Ljavafx/scene/paint/RadialGradient;-><init>(DDDDDZLjavafx/scene/paint/CycleMethod;Ljava/util/List;)V

    move-object v3, v4

    .line 130
    .local v3, "x":Ljavafx/scene/paint/RadialGradient;
    move-object v4, v3

    move-object v2, v4

    .end local v2    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v2
.end method

.method public centerX(D)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/RadialGradientBuilder;->centerX:D

    .line 52
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public centerY(D)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/RadialGradientBuilder;->centerY:D

    .line 61
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public cycleMethod(Ljavafx/scene/paint/CycleMethod;)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/CycleMethod;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/RadialGradientBuilder;->cycleMethod:Ljavafx/scene/paint/CycleMethod;

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public focusAngle(D)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/RadialGradientBuilder;->focusAngle:D

    .line 79
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public focusDistance(D)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/RadialGradientBuilder;->focusDistance:D

    .line 88
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public proportional(Z)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/paint/RadialGradientBuilder;->proportional:Z

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public radius(D)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/paint/RadialGradientBuilder;->radius:D

    .line 106
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public stops(Ljava/util/List;)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/paint/Stop;",
            ">;)",
            "Ljavafx/scene/paint/RadialGradientBuilder;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/paint/Stop;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/paint/RadialGradientBuilder;->stops:Ljava/util/List;

    .line 115
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method

.method public varargs stops([Ljavafx/scene/paint/Stop;)Ljavafx/scene/paint/RadialGradientBuilder;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/paint/RadialGradientBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/paint/Stop;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/paint/RadialGradientBuilder;->stops(Ljava/util/List;)Ljavafx/scene/paint/RadialGradientBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/paint/RadialGradientBuilder;
    return-object v0
.end method
