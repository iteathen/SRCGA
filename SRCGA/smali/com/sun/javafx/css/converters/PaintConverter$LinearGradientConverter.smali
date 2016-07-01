.class public final Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/PaintConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearGradientConverter"
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
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/PaintConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->LINEAR_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;
    .locals 28
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
    .line 120
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Paint;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v14, v0

    move-object v15, v1

    invoke-super {v14, v15}, Lcom/sun/javafx/css/StyleConverterImpl;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/paint/Paint;

    move-object v3, v14

    .line 121
    .local v3, "paint":Ljavafx/scene/paint/Paint;
    move-object v14, v3

    if-eqz v14, :cond_0

    move-object v14, v3

    move-object v0, v14

    .line 138
    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    :goto_0
    return-object v0

    .line 123
    .restart local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljavafx/css/ParsedValue;

    move-object v4, v14

    .line 124
    .local v4, "values":[Ljavafx/css/ParsedValue;
    const/4 v14, 0x0

    move v5, v14

    .line 125
    .local v5, "v":I
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    move-object v6, v14

    .line 126
    .local v6, "startX":Lcom/sun/javafx/css/Size;
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    move-object v7, v14

    .line 127
    .local v7, "startY":Lcom/sun/javafx/css/Size;
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    move-object v8, v14

    .line 128
    .local v8, "endX":Lcom/sun/javafx/css/Size;
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    move-object v9, v14

    .line 129
    .local v9, "endY":Lcom/sun/javafx/css/Size;
    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    if-ne v14, v15, :cond_1

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    move-object v15, v7

    invoke-virtual {v15}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v15

    if-ne v14, v15, :cond_1

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v15

    if-ne v14, v15, :cond_1

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v15

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 130
    .local v10, "proportional":Z
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/paint/CycleMethod;

    move-object v11, v14

    .line 131
    .local v11, "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    move-object v14, v4

    array-length v14, v14

    move v15, v5

    sub-int/2addr v14, v15

    new-array v14, v14, [Ljavafx/scene/paint/Stop;

    move-object v12, v14

    .line 132
    .local v12, "stops":[Ljavafx/scene/paint/Stop;
    move v14, v5

    move v13, v14

    .local v13, "s":I
    :goto_2
    move v14, v13

    move-object v15, v4

    array-length v15, v15

    if-ge v14, v15, :cond_2

    .line 133
    move-object v14, v12

    move v15, v13

    move/from16 v16, v5

    sub-int v15, v15, v16

    move-object/from16 v16, v4

    move/from16 v17, v13

    aget-object v16, v16, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavafx/scene/paint/Stop;

    aput-object v16, v14, v15

    .line 132
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 129
    .end local v10    # "proportional":Z
    .end local v11    # "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    .end local v12    # "stops":[Ljavafx/scene/paint/Stop;
    .end local v13    # "s":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 135
    .restart local v10    # "proportional":Z
    .restart local v11    # "cycleMethod":Ljavafx/scene/paint/CycleMethod;
    .restart local v12    # "stops":[Ljavafx/scene/paint/Stop;
    .restart local v13    # "s":I
    :cond_2
    new-instance v14, Ljavafx/scene/paint/LinearGradient;

    move-object/from16 v27, v14

    move-object/from16 v14, v27

    move-object/from16 v15, v27

    move-object/from16 v16, v6

    move-object/from16 v17, v2

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v16

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v18

    move-object/from16 v20, v8

    move-object/from16 v21, v2

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-object/from16 v22, v9

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v22

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v15 .. v26}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    move-object v3, v14

    .line 137
    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-super/range {v14 .. v16}, Lcom/sun/javafx/css/StyleConverterImpl;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 138
    move-object v14, v3

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    const-string v1, "LinearGradientConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;
    return-object v0
.end method
