.class public final Ljavafx/scene/chart/NumberAxisBuilder;
.super Ljavafx/scene/chart/ValueAxisBuilder;
.source "NumberAxisBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/chart/ValueAxisBuilder",
        "<",
        "Ljava/lang/Number;",
        "Ljavafx/scene/chart/NumberAxisBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private forceZeroInRange:Z

.field private tickUnit:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/ValueAxisBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/NumberAxisBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/NumberAxisBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/NumberAxisBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/chart/NumberAxis;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/NumberAxis;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/ValueAxisBuilder;->applyTo(Ljavafx/scene/chart/ValueAxis;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/NumberAxisBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/NumberAxisBuilder;->forceZeroInRange:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/NumberAxis;->setForceZeroInRange(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/NumberAxisBuilder;->tickUnit:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/NumberAxisBuilder;->build()Ljavafx/scene/chart/NumberAxis;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxisBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/NumberAxis;
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    new-instance v2, Ljavafx/scene/chart/NumberAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/chart/NumberAxis;-><init>()V

    move-object v1, v2

    .line 79
    .local v1, "x":Ljavafx/scene/chart/NumberAxis;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/NumberAxisBuilder;->applyTo(Ljavafx/scene/chart/NumberAxis;)V

    .line 80
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxisBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/NumberAxisBuilder;->build()Ljavafx/scene/chart/NumberAxis;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxisBuilder;
    return-object v0
.end method

.method public forceZeroInRange(Z)Ljavafx/scene/chart/NumberAxisBuilder;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/NumberAxisBuilder;->forceZeroInRange:Z

    .line 60
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/NumberAxisBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/chart/NumberAxisBuilder;->__set:I

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxisBuilder;
    return-object v0
.end method

.method public tickUnit(D)Ljavafx/scene/chart/NumberAxisBuilder;
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxisBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/NumberAxisBuilder;->tickUnit:D

    .line 70
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/NumberAxisBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/chart/NumberAxisBuilder;->__set:I

    .line 71
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxisBuilder;
    return-object v0
.end method
