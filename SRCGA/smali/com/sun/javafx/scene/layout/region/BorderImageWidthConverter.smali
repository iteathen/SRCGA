.class public Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BorderImageWidthConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BorderWidths;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->$assertionsDisabled:Z

    .line 41
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BorderWidths;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BorderWidths;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderWidths;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/layout/BorderWidths;"
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    move-object/from16 v3, p1

    .local v3, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderWidths;>;"
    move-object/from16 v4, p2

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljavafx/css/ParsedValue;

    move-object/from16 v5, v20

    .line 52
    .local v5, "sides":[Ljavafx/css/ParsedValue;
    sget-boolean v20, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->$assertionsDisabled:Z

    if-nez v20, :cond_0

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    new-instance v20, Ljava/lang/AssertionError;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    .line 54
    :cond_0
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v6, v20

    .local v6, "top":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v8, v20

    .local v8, "right":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v10, v20

    .local v10, "bottom":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, v20

    .line 55
    .local v12, "left":D
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "topPercent":Z
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "rightPercent":Z
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "bottomPercent":Z
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 56
    .local v17, "leftPercent":Z
    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 57
    .local v18, "val":Ljavafx/css/ParsedValue;
    const-string v20, "auto"

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 58
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v6, v20

    .line 65
    :goto_0
    move-object/from16 v20, v5

    const/16 v21, 0x1

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 66
    const-string v20, "auto"

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 67
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v8, v20

    .line 74
    :goto_1
    move-object/from16 v20, v5

    const/16 v21, 0x2

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 75
    const-string v20, "auto"

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 76
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v10, v20

    .line 83
    :goto_2
    move-object/from16 v20, v5

    const/16 v21, 0x3

    aget-object v20, v20, v21

    move-object/from16 v18, v20

    .line 84
    const-string v20, "auto"

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 85
    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    move-wide/from16 v12, v20

    .line 92
    :goto_3
    new-instance v20, Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v16

    move/from16 v33, v17

    invoke-direct/range {v21 .. v33}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDDZZZZ)V

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    return-object v2

    .line 60
    .restart local v2    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    :cond_1
    move-object/from16 v20, v18

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v19, v20

    .line 61
    .local v19, "size":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v19

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 62
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v20, 0x1

    :goto_4
    move/from16 v14, v20

    goto/16 :goto_0

    :cond_2
    const/16 v20, 0x0

    goto :goto_4

    .line 69
    .end local v19    # "size":Lcom/sun/javafx/css/Size;
    :cond_3
    move-object/from16 v20, v18

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v19, v20

    .line 70
    .restart local v19    # "size":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v19

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 71
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v20, 0x1

    :goto_5
    move/from16 v15, v20

    goto/16 :goto_1

    :cond_4
    const/16 v20, 0x0

    goto :goto_5

    .line 78
    .end local v19    # "size":Lcom/sun/javafx/css/Size;
    :cond_5
    move-object/from16 v20, v18

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v19, v20

    .line 79
    .restart local v19    # "size":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v19

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 80
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    :goto_6
    move/from16 v16, v20

    goto/16 :goto_2

    :cond_6
    const/16 v20, 0x0

    goto :goto_6

    .line 87
    .end local v19    # "size":Lcom/sun/javafx/css/Size;
    :cond_7
    move-object/from16 v20, v18

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Size;

    move-object/from16 v19, v20

    .line 88
    .restart local v19    # "size":Lcom/sun/javafx/css/Size;
    move-object/from16 v20, v19

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 89
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v20

    sget-object v21, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x1

    :goto_7
    move/from16 v17, v20

    goto/16 :goto_3

    :cond_8
    const/16 v20, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    const-string v1, "BorderImageWidthConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;
    return-object v0
.end method
