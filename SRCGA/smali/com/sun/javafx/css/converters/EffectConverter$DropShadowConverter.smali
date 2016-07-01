.class public final Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
.super Lcom/sun/javafx/css/converters/EffectConverter;
.source "EffectConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/EffectConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DropShadowConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/converters/EffectConverter;-><init>()V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/EffectConverter$1;)V
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/EffectConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sun/javafx/css/converters/EffectConverter$Holder;->DROP_SHADOW_INSTANCE:Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/effect/Effect;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/effect/Effect;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/effect/Effect;"
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/effect/Effect;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v12, v0

    move-object v13, v1

    invoke-super {v12, v13}, Lcom/sun/javafx/css/converters/EffectConverter;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/effect/Effect;

    move-object v3, v12

    .line 102
    .local v3, "effect":Ljavafx/scene/effect/Effect;
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    move-object v0, v12

    .line 133
    .end local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    :goto_0
    return-object v0

    .line 104
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/css/ParsedValue;

    move-object v4, v12

    .line 105
    .local v4, "values":[Ljavafx/css/ParsedValue;
    move-object v12, v4

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/effect/BlurType;

    move-object v5, v12

    .line 106
    .local v5, "blurType":Ljavafx/scene/effect/BlurType;
    move-object v12, v4

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/paint/Color;

    move-object v6, v12

    .line 107
    .local v6, "color":Ljavafx/scene/paint/Color;
    move-object v12, v4

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v7, v12

    .line 108
    .local v7, "radius":Ljava/lang/Double;
    move-object v12, v4

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v8, v12

    .line 109
    .local v8, "spread":Ljava/lang/Double;
    move-object v12, v4

    const/4 v13, 0x4

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v9, v12

    .line 110
    .local v9, "offsetX":Ljava/lang/Double;
    move-object v12, v4

    const/4 v13, 0x5

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v10, v12

    .line 111
    .local v10, "offsetY":Ljava/lang/Double;
    new-instance v12, Ljavafx/scene/effect/DropShadow;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljavafx/scene/effect/DropShadow;-><init>()V

    move-object v11, v12

    .line 112
    .local v11, "dropShadow":Ljavafx/scene/effect/DropShadow;
    move-object v12, v5

    if-eqz v12, :cond_1

    .line 113
    move-object v12, v11

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/scene/effect/DropShadow;->setBlurType(Ljavafx/scene/effect/BlurType;)V

    .line 115
    :cond_1
    move-object v12, v6

    if-eqz v12, :cond_2

    .line 116
    move-object v12, v11

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljavafx/scene/effect/DropShadow;->setColor(Ljavafx/scene/paint/Color;)V

    .line 118
    :cond_2
    move-object v12, v8

    if-eqz v12, :cond_3

    .line 119
    move-object v12, v11

    move-object v13, v8

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->setSpread(D)V

    .line 121
    :cond_3
    move-object v12, v7

    if-eqz v12, :cond_4

    .line 122
    move-object v12, v11

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->setRadius(D)V

    .line 124
    :cond_4
    move-object v12, v9

    if-eqz v12, :cond_5

    .line 125
    move-object v12, v11

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->setOffsetX(D)V

    .line 127
    :cond_5
    move-object v12, v10

    if-eqz v12, :cond_6

    .line 128
    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/effect/DropShadow;->setOffsetY(D)V

    .line 131
    :cond_6
    move-object v12, v0

    move-object v13, v1

    move-object v14, v11

    invoke-super {v12, v13, v14}, Lcom/sun/javafx/css/converters/EffectConverter;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 133
    move-object v12, v11

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    const-string v1, "DropShadowConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/EffectConverter$DropShadowConverter;
    return-object v0
.end method
