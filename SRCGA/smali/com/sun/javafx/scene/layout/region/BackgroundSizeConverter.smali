.class public final Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BackgroundSizeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BackgroundSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;->BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;->BACKGROUND_SIZE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BackgroundSize;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BackgroundSize;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/layout/BackgroundSize;"
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    move-object/from16 v1, p1

    .local v1, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BackgroundSize;>;"
    move-object/from16 v2, p2

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljavafx/css/ParsedValue;

    move-object v3, v14

    .line 54
    .local v3, "values":[Ljavafx/css/ParsedValue;
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_2

    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object v15, v2

    .line 55
    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    :goto_0
    move-object v4, v14

    .line 56
    .local v4, "wSize":Lcom/sun/javafx/css/Size;
    move-object v14, v3

    const/4 v15, 0x1

    aget-object v14, v14, v15

    if-eqz v14, :cond_3

    move-object v14, v3

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object v15, v2

    .line 57
    invoke-virtual {v14, v15}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sun/javafx/css/Size;

    :goto_1
    move-object v5, v14

    .line 59
    .local v5, "hSize":Lcom/sun/javafx/css/Size;
    const/4 v14, 0x1

    move v6, v14

    .line 60
    .local v6, "proportionalWidth":Z
    const/4 v14, 0x1

    move v7, v14

    .line 62
    .local v7, "proportionalHeight":Z
    move-object v14, v4

    if-eqz v14, :cond_0

    .line 63
    move-object v14, v4

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_2
    move v6, v14

    .line 65
    :cond_0
    move-object v14, v5

    if-eqz v14, :cond_1

    .line 67
    move-object v14, v5

    invoke-virtual {v14}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    if-ne v14, v15, :cond_5

    const/4 v14, 0x1

    :goto_3
    move v7, v14

    .line 70
    :cond_1
    move-object v14, v4

    if-eqz v14, :cond_6

    move-object v14, v4

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v14

    :goto_4
    move-wide v8, v14

    .line 71
    .local v8, "w":D
    move-object v14, v5

    if-eqz v14, :cond_7

    move-object v14, v5

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v14

    :goto_5
    move-wide v10, v14

    .line 73
    .local v10, "h":D
    move-object v14, v3

    const/4 v15, 0x2

    aget-object v14, v14, v15

    if-eqz v14, :cond_8

    .line 74
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v14

    move-object v15, v3

    const/16 v16, 0x2

    aget-object v15, v15, v16

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :goto_6
    move v12, v14

    .line 76
    .local v12, "cover":Z
    move-object v14, v3

    const/4 v15, 0x3

    aget-object v14, v14, v15

    if-eqz v14, :cond_9

    .line 77
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v14

    move-object v15, v3

    const/16 v16, 0x3

    aget-object v15, v15, v16

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    :goto_7
    move v13, v14

    .line 79
    .local v13, "contain":Z
    new-instance v14, Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v13

    move/from16 v23, v12

    invoke-direct/range {v15 .. v23}, Ljavafx/scene/layout/BackgroundSize;-><init>(DDZZZZ)V

    move-object v0, v14

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    return-object v0

    .line 55
    .end local v4    # "wSize":Lcom/sun/javafx/css/Size;
    .end local v5    # "hSize":Lcom/sun/javafx/css/Size;
    .end local v6    # "proportionalWidth":Z
    .end local v7    # "proportionalHeight":Z
    .end local v8    # "w":D
    .end local v10    # "h":D
    .end local v12    # "cover":Z
    .end local v13    # "contain":Z
    .restart local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 57
    .restart local v4    # "wSize":Lcom/sun/javafx/css/Size;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 63
    .restart local v5    # "hSize":Lcom/sun/javafx/css/Size;
    .restart local v6    # "proportionalWidth":Z
    .restart local v7    # "proportionalHeight":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 67
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 70
    :cond_6
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_4

    .line 71
    .restart local v8    # "w":D
    :cond_7
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    goto :goto_5

    .line 74
    .restart local v10    # "h":D
    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 77
    .restart local v12    # "cover":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    const-string v1, "BackgroundSizeConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BackgroundSizeConverter;
    return-object v0
.end method
