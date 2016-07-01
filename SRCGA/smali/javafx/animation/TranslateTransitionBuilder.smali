.class public final Ljavafx/animation/TranslateTransitionBuilder;
.super Ljavafx/animation/TransitionBuilder;
.source "TranslateTransitionBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/animation/TransitionBuilder",
        "<",
        "Ljavafx/animation/TranslateTransitionBuilder;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/animation/TranslateTransition;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private byX:D

.field private byY:D

.field private byZ:D

.field private duration:Ljavafx/util/Duration;

.field private fromX:D

.field private fromY:D

.field private fromZ:D

.field private node:Ljavafx/scene/Node;

.field private toX:D

.field private toY:D

.field private toZ:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/animation/TransitionBuilder;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/animation/TranslateTransitionBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/animation/TranslateTransitionBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/animation/TranslateTransitionBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/animation/TranslateTransitionBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/TranslateTransitionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/animation/TranslateTransition;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-object v2, p1

    .local v2, "x":Ljavafx/animation/TranslateTransition;
    move-object v5, v1

    move-object v6, v2

    invoke-super {v5, v6}, Ljavafx/animation/TransitionBuilder;->applyTo(Ljavafx/animation/Transition;)V

    .line 52
    move-object v5, v1

    iget v5, v5, Ljavafx/animation/TranslateTransitionBuilder;->__set:I

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

    .line 69
    :goto_1
    goto :goto_0

    .line 57
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->byX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setByX(D)V

    goto :goto_1

    .line 58
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->byY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setByY(D)V

    goto :goto_1

    .line 59
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->byZ:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setByZ(D)V

    goto :goto_1

    .line 60
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->duration:Ljavafx/util/Duration;

    invoke-virtual {v5, v6}, Ljavafx/animation/TranslateTransition;->setDuration(Ljavafx/util/Duration;)V

    goto :goto_1

    .line 61
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->fromX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setFromX(D)V

    goto :goto_1

    .line 62
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->fromY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setFromY(D)V

    goto :goto_1

    .line 63
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->fromZ:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setFromZ(D)V

    goto :goto_1

    .line 64
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->node:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/animation/TranslateTransition;->setNode(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 65
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->toX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setToX(D)V

    goto :goto_1

    .line 66
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->toY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setToY(D)V

    goto :goto_1

    .line 67
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/animation/TranslateTransitionBuilder;->toZ:D

    invoke-virtual {v5, v6, v7}, Ljavafx/animation/TranslateTransition;->setToZ(D)V

    goto :goto_1

    .line 70
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
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/animation/TranslateTransitionBuilder;->build()Ljavafx/animation/TranslateTransition;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public build()Ljavafx/animation/TranslateTransition;
    .locals 5

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    new-instance v2, Ljavafx/animation/TranslateTransition;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/animation/TranslateTransition;-><init>()V

    move-object v1, v2

    .line 187
    .local v1, "x":Ljavafx/animation/TranslateTransition;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/animation/TranslateTransitionBuilder;->applyTo(Ljavafx/animation/TranslateTransition;)V

    .line 188
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public byX(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->byX:D

    .line 78
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 79
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public byY(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->byY:D

    .line 88
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public byZ(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->byZ:D

    .line 98
    move-object v3, v0

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 99
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public duration(Ljavafx/util/Duration;)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/TranslateTransitionBuilder;->duration:Ljavafx/util/Duration;

    .line 108
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 109
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public fromX(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->fromX:D

    .line 118
    move-object v3, v0

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 119
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public fromY(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->fromY:D

    .line 128
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 129
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public fromZ(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->fromZ:D

    .line 138
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 139
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public node(Ljavafx/scene/Node;)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/animation/TranslateTransitionBuilder;->node:Ljavafx/scene/Node;

    .line 148
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 149
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public toX(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->toX:D

    .line 158
    move-object v3, v0

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 159
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public toY(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->toY:D

    .line 168
    move-object v3, v0

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 169
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method

.method public toZ(D)Ljavafx/animation/TranslateTransitionBuilder;
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/TranslateTransitionBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/animation/TranslateTransitionBuilder;->toZ:D

    .line 178
    move-object v3, v0

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljavafx/animation/TranslateTransitionBuilder;->__set(I)V

    .line 179
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/animation/TranslateTransitionBuilder;
    return-object v0
.end method
