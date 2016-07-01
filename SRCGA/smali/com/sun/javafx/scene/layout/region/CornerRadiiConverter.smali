.class public final Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "CornerRadiiConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue",
        "<[[",
        "Ljavafx/css/ParsedValue",
        "<*",
        "Lcom/sun/javafx/css/Size;",
        ">;",
        "Ljavafx/scene/layout/CornerRadii;",
        ">;[",
        "Ljavafx/scene/layout/CornerRadii;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->INSTANCE:Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->INSTANCE:Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/CornerRadii;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    return-object v0
.end method

.method public convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)[Ljavafx/scene/layout/CornerRadii;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/ParsedValue",
            "<[",
            "Ljavafx/css/ParsedValue",
            "<[[",
            "Ljavafx/css/ParsedValue",
            "<*",
            "Lcom/sun/javafx/css/Size;",
            ">;",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;[",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;",
            "Ljavafx/scene/text/Font;",
            ")[",
            "Ljavafx/scene/layout/CornerRadii;"
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    move-object/from16 v4, p1

    .local v4, "value":Ljavafx/css/ParsedValue;, "Ljavafx/css/ParsedValue<[Ljavafx/css/ParsedValue<[[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljavafx/scene/layout/CornerRadii;>;[Ljavafx/scene/layout/CornerRadii;>;"
    move-object/from16 v5, p2

    .local v5, "font":Ljavafx/scene/text/Font;
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljavafx/css/ParsedValue;

    move-object/from16 v6, v18

    .line 55
    .local v6, "values":[Ljavafx/css/ParsedValue;, "[Ljavafx/css/ParsedValue<[[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;Ljavafx/scene/layout/CornerRadii;>;"
    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 58
    .local v7, "cornerRadiiValues":[Ljavafx/scene/layout/CornerRadii;
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "n":I
    :goto_0
    move/from16 v18, v8

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 60
    move-object/from16 v18, v6

    move/from16 v19, v8

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljavafx/css/ParsedValue;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[Ljavafx/css/ParsedValue;

    move-object/from16 v9, v18

    .line 62
    .local v9, "sizes":[[Ljavafx/css/ParsedValue;, "[[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    move-object/from16 v18, v9

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v10, v18

    .line 63
    .local v10, "topLeftHorizontalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v11, v18

    .line 64
    .local v11, "topRightHorizontalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v12, v18

    .line 65
    .local v12, "bottomRightHorizontalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x0

    aget-object v18, v18, v19

    const/16 v19, 0x3

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v13, v18

    .line 66
    .local v13, "bottomLeftHorizontalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v14, v18

    .line 67
    .local v14, "topLeftVerticalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v15, v18

    .line 68
    .local v15, "topRightVerticalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v16, v18

    .line 69
    .local v16, "bottomRightVerticalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v9

    const/16 v19, 0x1

    aget-object v18, v18, v19

    const/16 v19, 0x3

    aget-object v18, v18, v19

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Ljavafx/css/ParsedValue;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sun/javafx/css/Size;

    move-object/from16 v17, v18

    .line 71
    .local v17, "bottomLeftVerticalRadius":Lcom/sun/javafx/css/Size;
    move-object/from16 v18, v7

    move/from16 v19, v8

    new-instance v20, Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v47, v20

    move-object/from16 v20, v47

    move-object/from16 v21, v47

    move-object/from16 v22, v10

    .line 72
    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v22

    move-object/from16 v24, v14

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v24

    move-object/from16 v26, v15

    .line 73
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v26

    move-object/from16 v28, v11

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v28

    move-object/from16 v30, v12

    .line 74
    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v30

    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v32

    move-object/from16 v34, v17

    .line 75
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v34

    move-object/from16 v36, v13

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/css/Size;->pixels()D

    move-result-wide v36

    move-object/from16 v38, v10

    .line 76
    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v38

    sget-object v39, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-ne v0, v1, :cond_0

    const/16 v38, 0x1

    :goto_1
    move-object/from16 v39, v14

    invoke-virtual/range {v39 .. v39}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v39

    sget-object v40, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1

    const/16 v39, 0x1

    :goto_2
    move-object/from16 v40, v15

    .line 77
    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v40

    sget-object v41, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_2

    const/16 v40, 0x1

    :goto_3
    move-object/from16 v41, v11

    invoke-virtual/range {v41 .. v41}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v41

    sget-object v42, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_3

    const/16 v41, 0x1

    :goto_4
    move-object/from16 v42, v12

    .line 78
    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v42

    sget-object v43, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_4

    const/16 v42, 0x1

    :goto_5
    move-object/from16 v43, v16

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v43

    sget-object v44, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_5

    const/16 v43, 0x1

    :goto_6
    move-object/from16 v44, v16

    .line 79
    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v44

    sget-object v45, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_6

    const/16 v44, 0x1

    :goto_7
    move-object/from16 v45, v13

    invoke-virtual/range {v45 .. v45}, Lcom/sun/javafx/css/Size;->getUnits()Lcom/sun/javafx/css/SizeUnits;

    move-result-object v45

    sget-object v46, Lcom/sun/javafx/css/SizeUnits;->PERCENT:Lcom/sun/javafx/css/SizeUnits;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-ne v0, v1, :cond_7

    const/16 v45, 0x1

    :goto_8
    invoke-direct/range {v21 .. v45}, Ljavafx/scene/layout/CornerRadii;-><init>(DDDDDDDDZZZZZZZZ)V

    aput-object v20, v18, v19

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 76
    :cond_0
    const/16 v38, 0x0

    goto :goto_1

    :cond_1
    const/16 v39, 0x0

    goto :goto_2

    .line 77
    :cond_2
    const/16 v40, 0x0

    goto :goto_3

    :cond_3
    const/16 v41, 0x0

    goto :goto_4

    .line 78
    :cond_4
    const/16 v42, 0x0

    goto :goto_5

    :cond_5
    const/16 v43, 0x0

    goto :goto_6

    .line 79
    :cond_6
    const/16 v44, 0x0

    goto :goto_7

    :cond_7
    const/16 v45, 0x0

    goto :goto_8

    .line 84
    .end local v9    # "sizes":[[Ljavafx/css/ParsedValue;, "[[Ljavafx/css/ParsedValue<*Lcom/sun/javafx/css/Size;>;"
    .end local v10    # "topLeftHorizontalRadius":Lcom/sun/javafx/css/Size;
    .end local v11    # "topRightHorizontalRadius":Lcom/sun/javafx/css/Size;
    .end local v12    # "bottomRightHorizontalRadius":Lcom/sun/javafx/css/Size;
    .end local v13    # "bottomLeftHorizontalRadius":Lcom/sun/javafx/css/Size;
    .end local v14    # "topLeftVerticalRadius":Lcom/sun/javafx/css/Size;
    .end local v15    # "topRightVerticalRadius":Lcom/sun/javafx/css/Size;
    .end local v16    # "bottomRightVerticalRadius":Lcom/sun/javafx/css/Size;
    .end local v17    # "bottomLeftVerticalRadius":Lcom/sun/javafx/css/Size;
    :cond_8
    move-object/from16 v18, v7

    move-object/from16 v3, v18

    .end local v3    # "this":Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;
    return-object v3
.end method
