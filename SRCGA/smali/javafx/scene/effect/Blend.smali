.class public Ljavafx/scene/effect/Blend;
.super Ljavafx/scene/effect/Effect;
.source "Blend.java"


# instance fields
.field private bottomInput:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlendMode;",
            ">;"
        }
    .end annotation
.end field

.field private opacity:Ljavafx/beans/property/DoubleProperty;

.field private topInput:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/BlendMode;)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "mode":Ljavafx/scene/effect/BlendMode;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 150
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/effect/Blend;->setMode(Ljavafx/scene/effect/BlendMode;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/effect/BlendMode;Ljavafx/scene/effect/Effect;Ljavafx/scene/effect/Effect;)V
    .locals 6

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "mode":Ljavafx/scene/effect/BlendMode;
    move-object v2, p2

    .local v2, "bottomInput":Ljavafx/scene/effect/Effect;
    move-object v3, p3

    .local v3, "topInput":Ljavafx/scene/effect/Effect;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 162
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Blend;->setMode(Ljavafx/scene/effect/BlendMode;)V

    .line 163
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Blend;->setBottomInput(Ljavafx/scene/effect/Effect;)V

    .line 164
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Blend;->setTopInput(Ljavafx/scene/effect/Effect;)V

    .line 165
    return-void
.end method

.method public static impl_getToolkitMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "mode":Ljavafx/scene/effect/BlendMode;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/effect/Blend;->toPGMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "mode":Ljavafx/scene/effect/BlendMode;
    return-object v0
.end method

.method private static toPGMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "mode":Ljavafx/scene/effect/BlendMode;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    .line 123
    .end local v0    # "mode":Ljavafx/scene/effect/BlendMode;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "mode":Ljavafx/scene/effect/BlendMode;
    :cond_0
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_1

    .line 91
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 92
    :cond_1
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->SRC_ATOP:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_2

    .line 93
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->SRC_ATOP:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 94
    :cond_2
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->ADD:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_3

    .line 95
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->ADD:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 96
    :cond_3
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->MULTIPLY:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_4

    .line 97
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->MULTIPLY:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 98
    :cond_4
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->SCREEN:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_5

    .line 99
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->SCREEN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 100
    :cond_5
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->OVERLAY:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_6

    .line 101
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->OVERLAY:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_6
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->DARKEN:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_7

    .line 103
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->DARKEN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 104
    :cond_7
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->LIGHTEN:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_8

    .line 105
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->LIGHTEN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 106
    :cond_8
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->COLOR_DODGE:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_9

    .line 107
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_DODGE:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 108
    :cond_9
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->COLOR_BURN:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_a

    .line 109
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->COLOR_BURN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 110
    :cond_a
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->HARD_LIGHT:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_b

    .line 111
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->HARD_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 112
    :cond_b
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->SOFT_LIGHT:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_c

    .line 113
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->SOFT_LIGHT:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 114
    :cond_c
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->DIFFERENCE:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_d

    .line 115
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->DIFFERENCE:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 116
    :cond_d
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->EXCLUSION:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_e

    .line 117
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->EXCLUSION:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_e
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->RED:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_f

    .line 119
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->RED:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto/16 :goto_0

    .line 120
    :cond_f
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->GREEN:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_10

    .line 121
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->GREEN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto/16 :goto_0

    .line 122
    :cond_10
    move-object v1, v0

    sget-object v2, Ljavafx/scene/effect/BlendMode;->BLUE:Ljavafx/scene/effect/BlendMode;

    if-ne v1, v2, :cond_11

    .line 123
    sget-object v1, Lcom/sun/scenario/effect/Blend$Mode;->BLUE:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    goto/16 :goto_0

    .line 125
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Unrecognized blend mode: {mode}"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final bottomInputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->bottomInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 284
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "bottomInput"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Blend;->bottomInput:Ljavafx/beans/property/ObjectProperty;

    .line 286
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->bottomInput:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method public final getBottomInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->bottomInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Blend;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->bottomInput:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getMode()Ljavafx/scene/effect/BlendMode;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->mode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Blend;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->mode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlendMode;

    goto :goto_0
.end method

.method public final getOpacity()D
    .locals 4

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Blend;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Blend;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Blend;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/Blend;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Blend;->opacity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTopInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->topInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/Blend;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->topInput:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 6

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Blend;->getTopInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v2, v4

    .line 317
    .local v2, "localTopInput":Ljavafx/scene/effect/Effect;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Blend;->getBottomInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v3, v4

    .line 318
    .local v3, "localBottomInput":Ljavafx/scene/effect/Effect;
    move-object v4, v2

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 319
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 325
    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    :goto_0
    return v0

    .line 320
    .restart local v0    # "this":Ljavafx/scene/effect/Blend;
    :cond_1
    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 322
    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 325
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    new-instance v1, Ljavafx/scene/effect/Blend;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Blend;->getMode()Ljavafx/scene/effect/BlendMode;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/Blend;->getBottomInput()Ljavafx/scene/effect/Effect;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/effect/Blend;->getTopInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/effect/Blend;-><init>(Ljavafx/scene/effect/BlendMode;Ljavafx/scene/effect/Effect;Ljavafx/scene/effect/Effect;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/Blend;
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    new-instance v1, Lcom/sun/scenario/effect/Blend;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    .line 170
    invoke-static {v3}, Ljavafx/scene/effect/Blend;->toPGMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v3

    sget-object v4, Lcom/sun/scenario/effect/Effect;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    sget-object v5, Lcom/sun/scenario/effect/Effect;->DefaultInput:Lcom/sun/scenario/effect/Effect;

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/Blend;->impl_createImpl()Lcom/sun/scenario/effect/Blend;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v5, v8

    .line 359
    .local v5, "topBounds":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v8, Lcom/sun/javafx/geom/RectBounds;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v6, v8

    .line 360
    .local v6, "bottomBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v6

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v0

    .line 362
    invoke-virtual {v12}, Ljavafx/scene/effect/Blend;->getBottomInput()Ljavafx/scene/effect/Effect;

    move-result-object v12

    .line 360
    invoke-static {v8, v9, v10, v11, v12}, Ljavafx/scene/effect/Blend;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v6, v8

    .line 363
    move-object v8, v5

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v0

    .line 365
    invoke-virtual {v12}, Ljavafx/scene/effect/Blend;->getTopInput()Ljavafx/scene/effect/Effect;

    move-result-object v12

    .line 363
    invoke-static {v8, v9, v10, v11, v12}, Ljavafx/scene/effect/Blend;->getInputBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;Ljavafx/scene/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v5, v8

    .line 366
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v7, v8

    .line 367
    .local v7, "ret":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method impl_update()V
    .locals 12

    .prologue
    .line 330
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Blend;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Blend;->getBottomInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    move-object v2, v5

    .line 331
    .local v2, "localBottomInput":Ljavafx/scene/effect/Effect;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/effect/Blend;->getTopInput()Ljavafx/scene/effect/Effect;

    move-result-object v5

    move-object v3, v5

    .line 333
    .local v3, "localTopInput":Ljavafx/scene/effect/Effect;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 334
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 336
    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 337
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 340
    :cond_1
    move-object v5, v1

    .line 341
    invoke-virtual {v5}, Ljavafx/scene/effect/Blend;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/Blend;

    move-object v4, v5

    .line 342
    .local v4, "peer":Lcom/sun/scenario/effect/Blend;
    move-object v5, v4

    move-object v6, v3

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/Blend;->setTopInput(Lcom/sun/scenario/effect/Effect;)V

    .line 343
    move-object v5, v4

    move-object v6, v2

    if-nez v6, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/Blend;->setBottomInput(Lcom/sun/scenario/effect/Effect;)V

    .line 344
    move-object v5, v4

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/effect/Blend;->getOpacity()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/Blend;->setOpacity(F)V

    .line 345
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/Blend;->getMode()Ljavafx/scene/effect/BlendMode;

    move-result-object v6

    invoke-static {v6}, Ljavafx/scene/effect/Blend;->toPGMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/scenario/effect/Blend;->setMode(Lcom/sun/scenario/effect/Blend$Mode;)V

    .line 346
    return-void

    .line 342
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    goto :goto_0

    .line 343
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    goto :goto_1
.end method

.method public final modeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlendMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->mode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 198
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Blend$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/effect/BlendMode;->SRC_OVER:Ljavafx/scene/effect/BlendMode;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Blend$1;-><init>(Ljavafx/scene/effect/Blend;Ljavafx/scene/effect/BlendMode;)V

    iput-object v2, v1, Ljavafx/scene/effect/Blend;->mode:Ljavafx/beans/property/ObjectProperty;

    .line 216
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->mode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method

.method public final opacityProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 242
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/Blend;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Blend;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 243
    move-object v2, v1

    new-instance v3, Ljavafx/scene/effect/Blend$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/effect/Blend$2;-><init>(Ljavafx/scene/effect/Blend;D)V

    iput-object v3, v2, Ljavafx/scene/effect/Blend;->opacity:Ljavafx/beans/property/DoubleProperty;

    .line 261
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/Blend;->opacity:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/Blend;
    return-object v1
.end method

.method public final setBottomInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Blend;->bottomInputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public final setMode(Ljavafx/scene/effect/BlendMode;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/BlendMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Blend;->modeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public final setOpacity(D)V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/Blend;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 235
    return-void
.end method

.method public final setTopInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/Blend;->topInputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method public final topInputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/Blend;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->topInput:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 309
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "topInput"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/Blend;->topInput:Ljavafx/beans/property/ObjectProperty;

    .line 311
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/Blend;->topInput:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/Blend;
    return-object v0
.end method
