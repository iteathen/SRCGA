.class public abstract Ljavafx/scene/chart/AxisBuilder;
.super Ljavafx/scene/layout/RegionBuilder;
.source "AxisBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/chart/AxisBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/layout/RegionBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private animated:Z

.field private autoRanging:Z

.field private label:Ljava/lang/String;

.field private side:Ljavafx/geometry/Side;

.field private tickLabelFill:Ljavafx/scene/paint/Paint;

.field private tickLabelFont:Ljavafx/scene/text/Font;

.field private tickLabelGap:D

.field private tickLabelRotation:D

.field private tickLabelsVisible:Z

.field private tickLength:D

.field private tickMarkVisible:Z

.field private tickMarks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/RegionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/chart/AxisBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/chart/AxisBuilder;->__set:I

    .line 44
    return-void
.end method


# virtual methods
.method public animated(Z)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/AxisBuilder;->animated:Z

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/chart/Axis;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/chart/Axis",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/chart/Axis;, "Ljavafx/scene/chart/Axis<TT;>;"
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/layout/RegionBuilder;->applyTo(Ljavafx/scene/layout/Region;)V

    .line 47
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/chart/AxisBuilder;->__set:I

    move v3, v5

    .line 48
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 49
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 50
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 51
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 65
    :goto_1
    goto :goto_0

    .line 52
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/chart/AxisBuilder;->animated:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setAnimated(Z)V

    goto :goto_1

    .line 53
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/chart/AxisBuilder;->autoRanging:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setAutoRanging(Z)V

    goto :goto_1

    .line 54
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/AxisBuilder;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setLabel(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/AxisBuilder;->side:Ljavafx/geometry/Side;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setSide(Ljavafx/geometry/Side;)V

    goto :goto_1

    .line 56
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLabelFill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setTickLabelFill(Ljavafx/scene/paint/Paint;)V

    goto :goto_1

    .line 57
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLabelFont:Ljavafx/scene/text/Font;

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setTickLabelFont(Ljavafx/scene/text/Font;)V

    goto :goto_1

    .line 58
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLabelGap:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/Axis;->setTickLabelGap(D)V

    goto :goto_1

    .line 59
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLabelRotation:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/Axis;->setTickLabelRotation(D)V

    goto :goto_1

    .line 60
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLabelsVisible:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setTickLabelsVisible(Z)V

    goto :goto_1

    .line 61
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickLength:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/chart/Axis;->setTickLength(D)V

    goto :goto_1

    .line 62
    :pswitch_a
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/chart/Axis;->getTickMarks()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickMarks:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_1

    .line 63
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/chart/AxisBuilder;->tickMarkVisible:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/chart/Axis;->setTickMarkVisible(Z)V

    goto :goto_1

    .line 66
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public autoRanging(Z)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/AxisBuilder;->autoRanging:Z

    .line 86
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 87
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public label(Ljava/lang/String;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/AxisBuilder;->label:Ljava/lang/String;

    .line 97
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 98
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public side(Ljavafx/geometry/Side;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Side;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Side;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/AxisBuilder;->side:Ljavafx/geometry/Side;

    .line 108
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 109
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelFill(Ljavafx/scene/paint/Paint;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/AxisBuilder;->tickLabelFill:Ljavafx/scene/paint/Paint;

    .line 119
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 120
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelFont(Ljavafx/scene/text/Font;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/text/Font;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/text/Font;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/AxisBuilder;->tickLabelFont:Ljavafx/scene/text/Font;

    .line 130
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 131
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelGap(D)Ljavafx/scene/chart/AxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/AxisBuilder;->tickLabelGap:D

    .line 141
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 142
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelRotation(D)Ljavafx/scene/chart/AxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/AxisBuilder;->tickLabelRotation:D

    .line 152
    move-object v3, v0

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 153
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLabelsVisible(Z)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/AxisBuilder;->tickLabelsVisible:Z

    .line 163
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 164
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickLength(D)Ljavafx/scene/chart/AxisBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/chart/AxisBuilder;->tickLength:D

    .line 174
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 175
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickMarkVisible(Z)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/chart/AxisBuilder;->tickMarkVisible:Z

    .line 203
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 204
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public tickMarks(Ljava/util/Collection;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;>;)TB;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/chart/Axis$TickMark<TT;>;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/AxisBuilder;->tickMarks:Ljava/util/Collection;

    .line 185
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->__set(I)V

    .line 186
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method

.method public varargs tickMarks([Ljavafx/scene/chart/Axis$TickMark;)Ljavafx/scene/chart/AxisBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/chart/Axis$TickMark",
            "<TT;>;)TB;"
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/chart/Axis$TickMark;, "[Ljavafx/scene/chart/Axis$TickMark<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/AxisBuilder;->tickMarks(Ljava/util/Collection;)Ljavafx/scene/chart/AxisBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/AxisBuilder;, "Ljavafx/scene/chart/AxisBuilder<TT;TB;>;"
    return-object v0
.end method
