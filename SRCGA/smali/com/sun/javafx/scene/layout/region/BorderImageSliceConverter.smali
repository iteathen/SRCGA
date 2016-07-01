.class public final Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BorderImageSliceConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_IMAGE_SLICE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->BORDER_IMAGE_SLICE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->BORDER_IMAGE_SLICE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;

    return-object v0
.end method


# virtual methods
.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;"
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    move-object/from16 v4, p1

    .local v4, "layer":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Lcom/sun/javafx/scene/layout/region/BorderImageSlices;>;"
    move-object/from16 v5, p2

    .local v5, "font":Ljavafx/scene/text/Font;
    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/css/ParsedValue;

    move-object v6, v12

    .line 55
    .local v6, "values":[Ljavafx/css/ParsedValue;
    move-object v12, v6

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljavafx/css/ParsedValue;

    check-cast v12, [Ljavafx/css/ParsedValue;

    move-object v7, v12

    .line 56
    .local v7, "sizes":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object v12, v7

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v8, v12

    .line 57
    .local v8, "topSz":Lcom/sun/javafx/css/Size;
    move-object v12, v7

    const/4 v13, 0x1

    aget-object v12, v12, v13

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v9, v12

    .line 58
    .local v9, "rightSz":Lcom/sun/javafx/css/Size;
    move-object v12, v7

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v10, v12

    .line 59
    .local v10, "bottomSz":Lcom/sun/javafx/css/Size;
    move-object v12, v7

    const/4 v13, 0x3

    aget-object v12, v12, v13

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/Size;

    move-object v11, v12

    .line 61
    .local v11, "leftSz":Lcom/sun/javafx/css/Size;
    new-instance v12, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object/from16 v29, v12

    move-object/from16 v12, v29

    move-object/from16 v13, v29

    new-instance v14, Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v29, v14

    move-object/from16 v14, v29

    move-object/from16 v15, v29

    move-object/from16 v16, v8

    move-object/from16 v17, v5

    .line 63
    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v16

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    .line 64
    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v18

    move-object/from16 v20, v10

    move-object/from16 v21, v5

    .line 65
    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-object/from16 v22, v11

    move-object/from16 v23, v5

    .line 66
    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v22

    move-object/from16 v24, v8

    .line 67
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v24

    sget-object v25, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v25, v9

    .line 68
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v25

    sget-object v26, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    const/16 v25, 0x1

    :goto_1
    move-object/from16 v26, v10

    .line 69
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v26

    sget-object v27, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v27, v11

    .line 70
    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v27

    sget-object v28, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v27, 0x1

    :goto_3
    invoke-direct/range {v15 .. v27}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    move-object v15, v6

    const/16 v16, 0x1

    aget-object v15, v15, v16

    .line 72
    invoke-virtual {v15}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;-><init>(Ljavafx/scene/layout/BorderWidths;Z)V

    move-object v3, v12

    .end local v3    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    return-object v3

    .line 67
    .restart local v3    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 68
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 69
    :cond_2
    const/16 v26, 0x0

    goto :goto_2

    .line 70
    :cond_3
    const/16 v27, 0x0

    goto :goto_3
.end method

.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    const-string v1, "BorderImageSliceConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageSliceConverter;
    return-object v0
.end method
