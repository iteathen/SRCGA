.class public final Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BackgroundPositionConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BackgroundPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACKGROUND_POSITION_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;->BACKGROUND_POSITION_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;->BACKGROUND_POSITION_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BackgroundPosition;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BackgroundPosition;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundPosition;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/layout/BackgroundPosition;"
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    move-object/from16 v3, p1

    .local v3, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundPosition;>;"
    move-object/from16 v4, p2

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljavafx/css/ParsedValue;

    move-object/from16 v5, v20

    .line 55
    .local v5, "positions":[Ljavafx/css/ParsedValue;
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v6, v20

    .line 56
    .local v6, "top":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v7, v20

    .line 57
    .local v7, "right":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v8, v20

    .line 58
    .local v8, "bottom":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v5

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v9, v20

    .line 60
    .local v9, "left":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v8

    .line 61
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_0
    move-object/from16 v20, v6

    .line 62
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_2

    :cond_1
    move-object/from16 v20, v6

    .line 63
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_6

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_6

    :cond_2
    const/16 v20, 0x1

    :goto_0
    move/from16 v10, v20

    .line 66
    .local v10, "verticalEdgeProportional":Z
    move-object/from16 v20, v7

    .line 67
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_3

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    :cond_3
    move-object/from16 v20, v9

    .line 68
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v20, v9

    .line 69
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_7

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_7

    :cond_5
    const/16 v20, 0x1

    :goto_1
    move/from16 v11, v20

    .line 71
    .local v11, "horizontalEdgeProportional":Z
    move-object/from16 v20, v6

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 72
    .local v12, "t":D
    move-object/from16 v20, v7

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 73
    .local v14, "r":D
    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 74
    .local v16, "b":D
    move-object/from16 v20, v9

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 76
    .local v18, "l":D
    new-instance v20, Ljavafx/scene/layout/BackgroundPosition;

    move-object/from16 v31, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v31

    move-wide/from16 v22, v18

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_8

    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-eqz v22, :cond_8

    sget-object v22, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    :goto_2
    move-wide/from16 v23, v18

    const-wide/16 v25, 0x0

    cmpl-double v23, v23, v25

    if-nez v23, :cond_9

    move-wide/from16 v23, v14

    const-wide/16 v25, 0x0

    cmpl-double v23, v23, v25

    if-eqz v23, :cond_9

    move-wide/from16 v23, v14

    :goto_3
    move/from16 v25, v11

    move-wide/from16 v26, v12

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-nez v26, :cond_a

    move-wide/from16 v26, v16

    const-wide/16 v28, 0x0

    cmpl-double v26, v26, v28

    if-eqz v26, :cond_a

    sget-object v26, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    :goto_4
    move-wide/from16 v27, v12

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-nez v27, :cond_b

    move-wide/from16 v27, v16

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-eqz v27, :cond_b

    move-wide/from16 v27, v16

    :goto_5
    move/from16 v29, v10

    invoke-direct/range {v21 .. v29}, Ljavafx/scene/layout/BackgroundPosition;-><init>(Ljavafx/geometry/Side;DZLjavafx/geometry/Side;DZ)V

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    return-object v2

    .line 63
    .end local v10    # "verticalEdgeProportional":Z
    .end local v11    # "horizontalEdgeProportional":Z
    .end local v12    # "t":D
    .end local v14    # "r":D
    .end local v16    # "b":D
    .end local v18    # "l":D
    .restart local v2    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 69
    .restart local v10    # "verticalEdgeProportional":Z
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 76
    .restart local v11    # "horizontalEdgeProportional":Z
    .restart local v12    # "t":D
    .restart local v14    # "r":D
    .restart local v16    # "b":D
    .restart local v18    # "l":D
    :cond_8
    sget-object v22, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    goto :goto_2

    :cond_9
    move-wide/from16 v23, v18

    goto :goto_3

    :cond_a
    sget-object v26, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    goto :goto_4

    :cond_b
    move-wide/from16 v27, v12

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    const-string v1, "BackgroundPositionConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundPositionConverter;
    return-object v0
.end method
