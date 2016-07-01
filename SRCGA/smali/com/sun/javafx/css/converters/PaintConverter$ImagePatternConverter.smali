.class public final Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/PaintConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImagePatternConverter"
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
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/PaintConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;
    .locals 26
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
    .line 160
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    move-object/from16 v2, p1

    .local v2, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Paint;>;"
    move-object/from16 v3, p2

    .local v3, "font":Ljavafx/scene/text/Font;
    move-object v13, v1

    move-object v14, v2

    invoke-super {v13, v14}, Lcom/sun/javafx/css/StyleConverterImpl;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/paint/Paint;

    move-object v4, v13

    .line 161
    .local v4, "paint":Ljavafx/scene/paint/Paint;
    move-object v13, v4

    if-eqz v13, :cond_0

    move-object v13, v4

    move-object v1, v13

    .line 184
    .end local v1    # "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    :goto_0
    return-object v1

    .line 163
    .restart local v1    # "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    :cond_0
    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljavafx/css/ParsedValue;

    move-object v5, v13

    .line 164
    .local v5, "values":[Ljavafx/css/ParsedValue;
    move-object v13, v5

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object v6, v13

    .line 165
    .local v6, "urlParsedValue":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<**>;"
    move-object v13, v6

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v7, v13

    .line 166
    .local v7, "url":Ljava/lang/String;
    move-object v13, v5

    array-length v13, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 167
    new-instance v13, Ljavafx/scene/paint/ImagePattern;

    move-object/from16 v25, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v25

    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v15

    invoke-direct {v14, v15}, Ljavafx/scene/paint/ImagePattern;-><init>(Ljavafx/scene/image/Image;)V

    move-object v1, v13

    goto :goto_0

    .line 170
    :cond_1
    move-object v13, v5

    const/4 v14, 0x1

    aget-object v13, v13, v14

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Size;

    move-object v8, v13

    .line 171
    .local v8, "x":Lcom/sun/javafx/css/Size;
    move-object v13, v5

    const/4 v14, 0x2

    aget-object v13, v13, v14

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Size;

    move-object v9, v13

    .line 172
    .local v9, "y":Lcom/sun/javafx/css/Size;
    move-object v13, v5

    const/4 v14, 0x3

    aget-object v13, v13, v14

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Size;

    move-object v10, v13

    .line 173
    .local v10, "w":Lcom/sun/javafx/css/Size;
    move-object v13, v5

    const/4 v14, 0x4

    aget-object v13, v13, v14

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Size;

    move-object v11, v13

    .line 174
    .local v11, "h":Lcom/sun/javafx/css/Size;
    move-object v13, v5

    array-length v13, v13

    const/4 v14, 0x6

    if-ge v13, v14, :cond_2

    const/4 v13, 0x1

    :goto_1
    move v12, v13

    .line 176
    .local v12, "p":Z
    new-instance v13, Ljavafx/scene/paint/ImagePattern;

    move-object/from16 v25, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v25

    new-instance v15, Ljavafx/scene/image/Image;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v17}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    .line 178
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v16

    move-object/from16 v18, v9

    .line 179
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v18

    move-object/from16 v20, v10

    .line 180
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    move-object/from16 v22, v11

    .line 181
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v22

    move/from16 v24, v12

    invoke-direct/range {v14 .. v24}, Ljavafx/scene/paint/ImagePattern;-><init>(Ljavafx/scene/image/Image;DDDDZ)V

    move-object v4, v13

    .line 183
    move-object v13, v1

    move-object v14, v2

    move-object v15, v4

    invoke-super {v13, v14, v15}, Lcom/sun/javafx/css/StyleConverterImpl;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 184
    move-object v13, v4

    move-object v1, v13

    goto/16 :goto_0

    .line 174
    .end local v12    # "p":Z
    :cond_2
    move-object v13, v5

    const/4 v14, 0x5

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    const-string v1, "ImagePatternConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;
    return-object v0
.end method
