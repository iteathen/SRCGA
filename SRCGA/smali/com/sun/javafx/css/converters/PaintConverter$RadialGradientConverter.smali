.class public final Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/PaintConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadialGradientConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/paint/Paint;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/PaintConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->RADIAL_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/paint/Paint;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/paint/Paint;"
        }
    .end annotation

    .prologue
    .line 240
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    move-object/from16 v4, p1

    .local v4, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Paint;>;"
    move-object/from16 v5, p2

    .local v5, "font":Ljavafx/scene/text/Font;
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-super/range {v20 .. v21}, Lcom/sun/javafx/css/StyleConverterImpl;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/paint/Paint;

    move-object/from16 v6, v20

    .line 241
    .local v6, "paint":Ljavafx/scene/paint/Paint;
    move-object/from16 v20, v6

    if-eqz v20, :cond_0

    move-object/from16 v20, v6

    move-object/from16 v3, v20

    .line 278
    .end local v3    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    :goto_0
    return-object v3

    .line 243
    .restart local v3    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    :cond_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljavafx/css/ParsedValue;

    move-object/from16 v7, v20

    .line 244
    .local v7, "values":[Ljavafx/css/ParsedValue;
    const/16 v20, 0x0

    move/from16 v8, v20

    .line 250
    .local v8, "v":I
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    if-eqz v20, :cond_1

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_1
    move-object/from16 v9, v20

    .line 251
    .local v9, "focusAngle":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    if-eqz v20, :cond_2

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_2
    move-object/from16 v10, v20

    .line 252
    .local v10, "focusDistance":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    if-eqz v20, :cond_3

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_3
    move-object/from16 v11, v20

    .line 253
    .local v11, "centerX":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    if-eqz v20, :cond_4

    move-object/from16 v20, v7

    move/from16 v21, v8

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    :goto_4
    move-object/from16 v12, v20

    .line 254
    .local v12, "centerY":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v13, v20

    .line 255
    .local v13, "radius":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/SizeUnits;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v14, v20

    .line 256
    .local v14, "proportional":Z
    move-object/from16 v20, v11

    if-eqz v20, :cond_6

    move/from16 v20, v14

    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v21

    sget-object v22, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/SizeUnits;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_5
    move/from16 v15, v20

    .line 257
    .local v15, "unitsAgree":Z
    move/from16 v20, v15

    if-eqz v20, :cond_8

    move-object/from16 v20, v12

    if-eqz v20, :cond_8

    move/from16 v20, v14

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v21

    sget-object v22, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/SizeUnits;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    :goto_6
    move/from16 v15, v20

    .line 258
    move/from16 v20, v15

    if-nez v20, :cond_9

    .line 259
    new-instance v20, Ljava/lang/IllegalArgumentException;

    move-object/from16 v35, v20

    move-object/from16 v20, v35

    move-object/from16 v21, v35

    const-string v22, "units do not agree"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 250
    .end local v9    # "focusAngle":Lcom/sun/javafx/css/Size;
    .end local v10    # "focusDistance":Lcom/sun/javafx/css/Size;
    .end local v11    # "centerX":Lcom/sun/javafx/css/Size;
    .end local v12    # "centerY":Lcom/sun/javafx/css/Size;
    .end local v13    # "radius":Lcom/sun/javafx/css/Size;
    .end local v14    # "proportional":Z
    .end local v15    # "unitsAgree":Z
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 251
    .restart local v9    # "focusAngle":Lcom/sun/javafx/css/Size;
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 252
    .restart local v10    # "focusDistance":Lcom/sun/javafx/css/Size;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 253
    .restart local v11    # "centerX":Lcom/sun/javafx/css/Size;
    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    .line 256
    .restart local v12    # "centerY":Lcom/sun/javafx/css/Size;
    .restart local v13    # "radius":Lcom/sun/javafx/css/Size;
    .restart local v14    # "proportional":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_5

    :cond_6
    const/16 v20, 0x1

    goto :goto_5

    .line 257
    .restart local v15    # "unitsAgree":Z
    :cond_7
    const/16 v20, 0x0

    goto :goto_6

    :cond_8
    const/16 v20, 0x1

    goto :goto_6

    .line 261
    :cond_9
    move-object/from16 v20, v7

    move/from16 v21, v8

    add-int/lit8 v8, v8, 0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v16, v20

    .line 262
    .local v16, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object/from16 v20, v7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v21, v8

    sub-int v20, v20, v21

    move/from16 v0, v20

    new-array v0, v0, [Ljavafx/scene/paint/Stop;

    move-object/from16 v20, v0

    move-object/from16 v17, v20

    .line 263
    .local v17, "stops":[Ljavafx/scene/paint/Stop;
    move/from16 v20, v8

    move/from16 v18, v20

    .local v18, "s":I
    :goto_7
    move/from16 v20, v18

    move-object/from16 v21, v7

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 264
    move-object/from16 v20, v17

    move/from16 v21, v18

    move/from16 v22, v8

    sub-int v21, v21, v22

    move-object/from16 v22, v7

    move/from16 v23, v18

    aget-object v22, v22, v23

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/paint/Stop;

    aput-object v22, v20, v21

    .line 263
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 268
    :cond_a
    const-wide/16 v20, 0x0

    move-wide/from16 v18, v20

    .line 269
    .local v18, "fa":D
    move-object/from16 v20, v9

    if-eqz v20, :cond_b

    .line 270
    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 271
    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/SizeUnits;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 272
    move-wide/from16 v20, v18

    const-wide v22, 0x4076800000000000L    # 360.0

    mul-double v20, v20, v22

    const-wide v22, 0x4076800000000000L    # 360.0

    rem-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 275
    :cond_b
    new-instance v20, Ljavafx/scene/paint/RadialGradient;

    move-object/from16 v35, v20

    move-object/from16 v20, v35

    move-object/from16 v21, v35

    move-wide/from16 v22, v18

    move-object/from16 v24, v10

    if-eqz v24, :cond_c

    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v24

    :goto_8
    move-object/from16 v26, v11

    if-eqz v26, :cond_d

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v26

    :goto_9
    move-object/from16 v28, v12

    if-eqz v28, :cond_e

    move-object/from16 v28, v12

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v28

    :goto_a
    move-object/from16 v30, v13

    if-eqz v30, :cond_f

    move-object/from16 v30, v13

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v30

    :goto_b
    move/from16 v32, v14

    move-object/from16 v33, v16

    move-object/from16 v34, v17

    invoke-direct/range {v21 .. v34}, Ljavafx/scene/paint/RadialGradient;-><init>(DDDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    move-object/from16 v6, v20

    .line 277
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    invoke-super/range {v20 .. v22}, Lcom/sun/javafx/css/StyleConverterImpl;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 278
    move-object/from16 v20, v6

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 275
    :cond_c
    const-wide/16 v24, 0x0

    goto :goto_8

    :cond_d
    const-wide/16 v26, 0x0

    goto :goto_9

    :cond_e
    const-wide/16 v28, 0x0

    goto :goto_a

    :cond_f
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    const-string v1, "RadialGradientConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;
    return-object v0
.end method
