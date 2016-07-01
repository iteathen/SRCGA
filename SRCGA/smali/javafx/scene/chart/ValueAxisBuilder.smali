.class public abstract Ljavafx/scene/chart/ValueAxisBuilder;
.super Ljavafx/scene/chart/AxisBuilder;
.source "ValueAxisBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        "B:",
        "Ljavafx/scene/chart/ValueAxisBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/chart/AxisBuilder",
        "<TT;TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private lowerBound:D

.field private minorTickCount:I

.field private minorTickLength:D

.field private minorTickVisible:Z

.field private tickLabelFormatter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private upperBound:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/chart/AxisBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/chart/ValueAxis;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/ValueAxis",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/chart/ValueAxis;, "Ljavafx/scene/chart/ValueAxis<TT;>;"
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/chart/AxisBuilder;->applyTo(Ljavafx/scene/chart/Axis;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->lowerBound:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->setLowerBound(D)V

    .line 46
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/ValueAxis;->setMinorTickCount(I)V

    .line 47
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickLength:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->setMinorTickLength(D)V

    .line 48
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickVisible:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/ValueAxis;->setMinorTickVisible(Z)V

    .line 49
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->tickLabelFormatter:Ljavafx/util/StringConverter;

    invoke-virtual {v3, v4}, Ljavafx/scene/chart/ValueAxis;->setTickLabelFormatter(Ljavafx/util/StringConverter;)V

    .line 50
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->upperBound:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/ValueAxis;->setUpperBound(D)V

    .line 51
    :cond_5
    return-void
.end method

.method public lowerBound(D)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->lowerBound:D

    .line 60
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 61
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public minorTickCount(I)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickCount:I

    .line 71
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 72
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public minorTickLength(D)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickLength:D

    .line 82
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 83
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public minorTickVisible(Z)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->minorTickVisible:Z

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelFormatter(Ljavafx/util/StringConverter;)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->tickLabelFormatter:Ljavafx/util/StringConverter;

    .line 104
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public upperBound(D)Ljavafx/scene/chart/ValueAxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->upperBound:D

    .line 115
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/chart/ValueAxisBuilder;->__set:I

    .line 116
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/ValueAxisBuilder;, "Ljavafx/scene/chart/ValueAxisBuilder<TT;TB;>;"
    return-object v0
.end method
