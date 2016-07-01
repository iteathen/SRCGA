.class public final Ljavafx/scene/chart/CategoryAxisBuilder;
.super Ljavafx/scene/chart/AxisBuilder;
.source "CategoryAxisBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/chart/AxisBuilder",
        "<",
        "Ljava/lang/String;",
        "Ljavafx/scene/chart/CategoryAxisBuilder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private categories:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endMargin:D

.field private gapStartAndEnd:Z

.field private startMargin:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/AxisBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/chart/CategoryAxisBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/chart/CategoryAxisBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/chart/CategoryAxisBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/chart/CategoryAxis;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/CategoryAxis;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/AxisBuilder;->applyTo(Ljavafx/scene/chart/Axis;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->categories:Ljavafx/collections/ObservableList;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/CategoryAxis;->setCategories(Ljavafx/collections/ObservableList;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->endMargin:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis;->setEndMargin(D)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->gapStartAndEnd:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/CategoryAxis;->setGapStartAndEnd(Z)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->startMargin:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/CategoryAxis;->setStartMargin(D)V

    .line 54
    :cond_3
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/CategoryAxisBuilder;->build()Ljavafx/scene/chart/CategoryAxis;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/chart/CategoryAxis;
    .locals 5

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    new-instance v2, Ljavafx/scene/chart/CategoryAxis;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/chart/CategoryAxis;-><init>()V

    move-object v1, v2

    .line 101
    .local v1, "x":Ljavafx/scene/chart/CategoryAxis;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/CategoryAxisBuilder;->applyTo(Ljavafx/scene/chart/CategoryAxis;)V

    .line 102
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/layout/Region;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/chart/CategoryAxisBuilder;->build()Ljavafx/scene/chart/CategoryAxis;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public categories(Ljavafx/collections/ObservableList;)Ljavafx/scene/chart/CategoryAxisBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavafx/scene/chart/CategoryAxisBuilder;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/CategoryAxisBuilder;->categories:Ljavafx/collections/ObservableList;

    .line 62
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    .line 63
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public endMargin(D)Ljavafx/scene/chart/CategoryAxisBuilder;
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->endMargin:D

    .line 72
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    .line 73
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public gapStartAndEnd(Z)Ljavafx/scene/chart/CategoryAxisBuilder;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/CategoryAxisBuilder;->gapStartAndEnd:Z

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method

.method public startMargin(D)Ljavafx/scene/chart/CategoryAxisBuilder;
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->startMargin:D

    .line 92
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Ljavafx/scene/chart/CategoryAxisBuilder;->__set:I

    .line 93
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/CategoryAxisBuilder;
    return-object v0
.end method
