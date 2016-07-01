.class public Ljavafx/scene/control/SliderBuilder;
.super Ljavafx/scene/control/ControlBuilder;
.source "SliderBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/SliderBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/ControlBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/Slider;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private blockIncrement:D

.field private labelFormatter:Ljavafx/util/StringConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private majorTickUnit:D

.field private max:D

.field private min:D

.field private minorTickCount:I

.field private orientation:Ljavafx/geometry/Orientation;

.field private showTickLabels:Z

.field private showTickMarks:Z

.field private snapToTicks:Z

.field private value:D

.field private valueChanging:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/control/SliderBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/control/SliderBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/control/SliderBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SliderBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/SliderBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/SliderBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Slider;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/control/Slider;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/scene/control/ControlBuilder;->applyTo(Ljavafx/scene/control/Control;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/control/SliderBuilder;->__set:I

    move v3, v5

    .line 53
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 54
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 55
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 56
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 70
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/SliderBuilder;->blockIncrement:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setBlockIncrement(D)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SliderBuilder;->labelFormatter:Ljavafx/util/StringConverter;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setLabelFormatter(Ljavafx/util/StringConverter;)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/SliderBuilder;->majorTickUnit:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setMajorTickUnit(D)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/SliderBuilder;->max:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setMax(D)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/SliderBuilder;->min:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setMin(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/control/SliderBuilder;->minorTickCount:I

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setMinorTickCount(I)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SliderBuilder;->orientation:Ljavafx/geometry/Orientation;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setOrientation(Ljavafx/geometry/Orientation;)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/SliderBuilder;->showTickLabels:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setShowTickLabels(Z)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/SliderBuilder;->showTickMarks:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setShowTickMarks(Z)V

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/SliderBuilder;->snapToTicks:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setSnapToTicks(Z)V

    goto :goto_1

    .line 67
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/SliderBuilder;->value:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setValue(D)V

    goto :goto_1

    .line 68
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/control/SliderBuilder;->valueChanging:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setValueChanging(Z)V

    goto :goto_1

    .line 71
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 56
    nop

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

.method public blockIncrement(D)Ljavafx/scene/control/SliderBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/SliderBuilder;->blockIncrement:D

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 81
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SliderBuilder;->build()Ljavafx/scene/control/Slider;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/Slider;
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/Slider;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Slider;-><init>()V

    move-object v1, v2

    .line 210
    .local v1, "x":Ljavafx/scene/control/Slider;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SliderBuilder;->applyTo(Ljavafx/scene/control/Slider;)V

    .line 211
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public labelFormatter(Ljavafx/util/StringConverter;)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljava/lang/Double;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SliderBuilder;->labelFormatter:Ljavafx/util/StringConverter;

    .line 91
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 92
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public majorTickUnit(D)Ljavafx/scene/control/SliderBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/SliderBuilder;->majorTickUnit:D

    .line 102
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 103
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public max(D)Ljavafx/scene/control/SliderBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/SliderBuilder;->max:D

    .line 113
    move-object v3, v0

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 114
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public min(D)Ljavafx/scene/control/SliderBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/SliderBuilder;->min:D

    .line 124
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 125
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public minorTickCount(I)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/control/SliderBuilder;->minorTickCount:I

    .line 135
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 136
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public orientation(Ljavafx/geometry/Orientation;)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Orientation;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Orientation;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/SliderBuilder;->orientation:Ljavafx/geometry/Orientation;

    .line 146
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 147
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public showTickLabels(Z)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/SliderBuilder;->showTickLabels:Z

    .line 157
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 158
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public showTickMarks(Z)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/SliderBuilder;->showTickMarks:Z

    .line 168
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 169
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public snapToTicks(Z)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/SliderBuilder;->snapToTicks:Z

    .line 179
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 180
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public value(D)Ljavafx/scene/control/SliderBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/control/SliderBuilder;->value:D

    .line 190
    move-object v3, v0

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 191
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method

.method public valueChanging(Z)Ljavafx/scene/control/SliderBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/SliderBuilder;->valueChanging:Z

    .line 201
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/control/SliderBuilder;->__set(I)V

    .line 202
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SliderBuilder;, "Ljavafx/scene/control/SliderBuilder<TB;>;"
    return-object v0
.end method
