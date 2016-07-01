.class public final Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/PaintConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepeatingImagePatternConverter"
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
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/converters/PaintConverter$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->REPEATING_IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/paint/Paint;
    .locals 22
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
    .line 206
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    move-object/from16 v2, p1

    .local v2, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/paint/Paint;>;"
    move-object/from16 v3, p2

    .local v3, "font":Ljavafx/scene/text/Font;
    move-object v9, v1

    move-object v10, v2

    invoke-super {v9, v10}, Lcom/sun/javafx/css/StyleConverterImpl;->getCachedValue(Ljavafx/css/ParsedValue;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/paint/Paint;

    move-object v4, v9

    .line 207
    .local v4, "paint":Ljavafx/scene/paint/Paint;
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v4

    move-object v1, v9

    .line 218
    .end local v1    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    :goto_0
    return-object v1

    .line 209
    .restart local v1    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    :cond_0
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljavafx/css/ParsedValue;

    move-object v5, v9

    .line 210
    .local v5, "values":[Ljavafx/css/ParsedValue;
    move-object v9, v5

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v6, v9

    .line 211
    .local v6, "url":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<**>;"
    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    .line 213
    .local v7, "u":Ljava/lang/String;
    move-object v9, v7

    if-nez v9, :cond_1

    const/4 v9, 0x0

    move-object v1, v9

    goto :goto_0

    .line 214
    :cond_1
    new-instance v9, Ljavafx/scene/image/Image;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    move-object v11, v7

    invoke-direct {v10, v11}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 215
    .local v8, "image":Ljavafx/scene/image/Image;
    new-instance v9, Ljavafx/scene/paint/ImagePattern;

    move-object/from16 v21, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v21

    move-object v11, v8

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v16

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v18

    const/16 v20, 0x0

    invoke-direct/range {v10 .. v20}, Ljavafx/scene/paint/ImagePattern;-><init>(Ljavafx/scene/image/Image;DDDDZ)V

    move-object v4, v9

    .line 217
    move-object v9, v1

    move-object v10, v2

    move-object v11, v4

    invoke-super {v9, v10, v11}, Lcom/sun/javafx/css/StyleConverterImpl;->cacheValue(Ljavafx/css/ParsedValue;Ljava/lang/Object;)V

    .line 218
    move-object v9, v4

    move-object v1, v9

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    const-string v1, "RepeatingImagePatternConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;
    return-object v0
.end method
