.class public Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BorderStyleConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/BorderStrokeStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_STYLE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

.field public static final DASHED:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIDDEN:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOLID:Lcom/sun/javafx/css/ParsedValueImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/css/ParsedValueImpl",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "[",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->NONE:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 66
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->HIDDEN:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 67
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 68
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DASHED:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 69
    new-instance v0, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->SOLID:Lcom/sun/javafx/css/ParsedValueImpl;

    .line 74
    new-instance v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->BORDER_STYLE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->BORDER_STYLE_CONVERTER:Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljavafx/scene/layout/BorderStrokeStyle;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/scene/layout/BorderStrokeStyle;"
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    move-object/from16 v3, p1

    .local v3, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue;Ljavafx/scene/layout/BorderStrokeStyle;>;"
    move-object/from16 v4, p2

    .local v4, "font":Ljavafx/scene/text/Font;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljavafx/css/ParsedValue;

    move-object/from16 v5, v18

    .line 94
    .local v5, "values":[Ljavafx/css/ParsedValue;
    move-object/from16 v18, v5

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v6, v18

    .line 95
    .local v6, "v":Ljavafx/css/ParsedValue;
    move-object/from16 v18, v5

    const/16 v19, 0x1

    aget-object v18, v18, v19

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    const/16 v19, 0x2

    aget-object v18, v18, v19

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    const/16 v19, 0x3

    aget-object v18, v18, v19

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    const/16 v19, 0x4

    aget-object v18, v18, v19

    if-nez v18, :cond_0

    move-object/from16 v18, v5

    const/16 v19, 0x5

    aget-object v18, v18, v19

    if-nez v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v7, v18

    .line 101
    .local v7, "onlyNamed":Z
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->NONE:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v2, v18

    .line 154
    .end local v2    # "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    :goto_1
    return-object v2

    .line 95
    .end local v7    # "onlyNamed":Z
    .restart local v2    # "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 102
    .restart local v7    # "onlyNamed":Z
    :cond_1
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    move/from16 v18, v7

    if-eqz v18, :cond_2

    .line 103
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v2, v18

    goto :goto_1

    .line 104
    :cond_2
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DASHED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    move/from16 v18, v7

    if-eqz v18, :cond_3

    .line 105
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v2, v18

    goto :goto_1

    .line 106
    :cond_3
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->SOLID:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v18, v7

    if-eqz v18, :cond_4

    .line 107
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v2, v18

    goto :goto_1

    .line 111
    :cond_4
    move-object/from16 v18, v5

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 112
    invoke-virtual/range {v18 .. v18}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljavafx/css/ParsedValue;

    move-object/from16 v8, v18

    .line 115
    .local v8, "dash_vals":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v18, v8

    if-nez v18, :cond_9

    .line 116
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 117
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v18

    move-object/from16 v9, v18

    .line 133
    .local v9, "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_5
    :goto_2
    move-object/from16 v18, v5

    const/16 v19, 0x1

    aget-object v18, v18, v19

    if-eqz v18, :cond_a

    move-object/from16 v18, v5

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    .line 134
    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    :goto_3
    move-wide/from16 v10, v18

    .line 136
    .local v10, "dash_phase":D
    move-object/from16 v18, v5

    const/16 v19, 0x2

    aget-object v18, v18, v19

    if-eqz v18, :cond_b

    move-object/from16 v18, v5

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    .line 137
    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/shape/StrokeType;

    :goto_4
    move-object/from16 v12, v18

    .line 139
    .local v12, "stroke_type":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v18, v5

    const/16 v19, 0x3

    aget-object v18, v18, v19

    if-eqz v18, :cond_c

    move-object/from16 v18, v5

    const/16 v19, 0x3

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    .line 140
    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/shape/StrokeLineJoin;

    :goto_5
    move-object/from16 v13, v18

    .line 142
    .local v13, "line_join":Ljavafx/scene/shape/StrokeLineJoin;
    move-object/from16 v18, v5

    const/16 v19, 0x4

    aget-object v18, v18, v19

    if-eqz v18, :cond_d

    move-object/from16 v18, v5

    const/16 v19, 0x4

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    .line 143
    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    :goto_6
    move-wide/from16 v14, v18

    .line 145
    .local v14, "miter_limit":D
    move-object/from16 v18, v5

    const/16 v19, 0x5

    aget-object v18, v18, v19

    if-eqz v18, :cond_e

    move-object/from16 v18, v5

    const/16 v19, 0x5

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    .line 146
    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljavafx/scene/shape/StrokeLineCap;

    :goto_7
    move-object/from16 v16, v18

    .line 148
    .local v16, "line_cap":Ljavafx/scene/shape/StrokeLineCap;
    new-instance v18, Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v16

    move-wide/from16 v23, v14

    move-wide/from16 v25, v10

    move-object/from16 v27, v9

    invoke-direct/range {v19 .. v27}, Ljavafx/scene/layout/BorderStrokeStyle;-><init>(Ljavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineJoin;Ljavafx/scene/shape/StrokeLineCap;DDLjava/util/List;)V

    move-object/from16 v17, v18

    .line 151
    .local v17, "borderStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v19, v17

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/layout/BorderStrokeStyle;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 152
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v2, v18

    goto/16 :goto_1

    .line 118
    .end local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v10    # "dash_phase":D
    .end local v12    # "stroke_type":Ljavafx/scene/shape/StrokeType;
    .end local v13    # "line_join":Ljavafx/scene/shape/StrokeLineJoin;
    .end local v14    # "miter_limit":D
    .end local v16    # "line_cap":Ljavafx/scene/shape/StrokeLineCap;
    .end local v17    # "borderStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_6
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DASHED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 119
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v18

    move-object/from16 v9, v18

    .restart local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    goto/16 :goto_2

    .line 120
    .end local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_7
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->SOLID:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 121
    sget-object v18, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v18

    move-object/from16 v9, v18

    .restart local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    goto/16 :goto_2

    .line 123
    .end local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    move-object/from16 v9, v18

    .restart local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    goto/16 :goto_2

    .line 126
    .end local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_9
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v28, v18

    move-object/from16 v18, v28

    move-object/from16 v19, v28

    move-object/from16 v20, v8

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v9, v18

    .line 127
    .restart local v9    # "dashes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "dash":I
    :goto_8
    move/from16 v18, v10

    move-object/from16 v19, v8

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 128
    move-object/from16 v18, v8

    move/from16 v19, v10

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v11, v18

    .line 129
    .local v11, "size":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Lcom/sun/javafx/css/Size;->pixels(Ljavafx/scene/text/Font;)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v18

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 134
    .end local v10    # "dash":I
    .end local v11    # "size":Lcom/sun/javafx/css/Size;
    :cond_a
    const-wide/16 v18, 0x0

    goto/16 :goto_3

    .line 137
    .local v10, "dash_phase":D
    :cond_b
    sget-object v18, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    goto/16 :goto_4

    .line 140
    .restart local v12    # "stroke_type":Ljavafx/scene/shape/StrokeType;
    :cond_c
    sget-object v18, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    goto/16 :goto_5

    .line 143
    .restart local v13    # "line_join":Ljavafx/scene/shape/StrokeLineJoin;
    :cond_d
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    goto/16 :goto_6

    .line 146
    .restart local v14    # "miter_limit":D
    :cond_e
    sget-object v18, Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;->DOTTED:Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    sget-object v18, Ljavafx/scene/shape/StrokeLineCap;->ROUND:Ljavafx/scene/shape/StrokeLineCap;

    goto/16 :goto_7

    :cond_f
    sget-object v18, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    goto/16 :goto_7

    .line 154
    .restart local v16    # "line_cap":Ljavafx/scene/shape/StrokeLineCap;
    .restart local v17    # "borderStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_10
    move-object/from16 v18, v17

    move-object/from16 v2, v18

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    const-string v1, "BorderStyleConverter"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/BorderStyleConverter;
    return-object v0
.end method
