.class Ljavafx/scene/layout/BorderConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BorderConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/Border;",
        ">;"
    }
.end annotation


# static fields
.field private static final BORDER_IMAGE_CONVERTER:Ljavafx/scene/layout/BorderConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljavafx/scene/layout/BorderConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/BorderConverter;-><init>()V

    sput-object v0, Ljavafx/scene/layout/BorderConverter;->BORDER_IMAGE_CONVERTER:Ljavafx/scene/layout/BorderConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Ljavafx/scene/layout/BorderConverter;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ljavafx/scene/layout/BorderConverter;->BORDER_IMAGE_CONVERTER:Ljavafx/scene/layout/BorderConverter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/BorderConverter;->convert(Ljava/util/Map;)Ljavafx/scene/layout/Border;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BorderConverter;
    return-object v0
.end method

.method public convert(Ljava/util/Map;)Ljavafx/scene/layout/Border;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljavafx/scene/layout/Border;"
        }
    .end annotation

    .prologue
    .line 58
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/BorderConverter;
    move-object/from16 v3, p1

    .local v3, "convertedValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_COLOR:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[Ljavafx/scene/paint/Paint;

    check-cast v27, [[Ljavafx/scene/paint/Paint;

    move-object/from16 v4, v27

    .line 59
    .local v4, "strokeFills":[[Ljavafx/scene/paint/Paint;
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_STYLE:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [[Ljavafx/scene/layout/BorderStrokeStyle;

    check-cast v27, [[Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v5, v27

    .line 60
    .local v5, "strokeStyles":[[Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SOURCE:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Ljava/lang/String;

    check-cast v27, [Ljava/lang/String;

    move-object/from16 v6, v27

    .line 72
    .local v6, "imageUrls":[Ljava/lang/String;
    move-object/from16 v27, v4

    if-eqz v27, :cond_0

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-gtz v27, :cond_1

    :cond_0
    move-object/from16 v27, v5

    if-eqz v27, :cond_2

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_2

    :cond_1
    const/16 v27, 0x1

    :goto_0
    move/from16 v7, v27

    .line 73
    .local v7, "hasStrokes":Z
    move-object/from16 v27, v6

    if-eqz v27, :cond_3

    move-object/from16 v27, v6

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_3

    const/16 v27, 0x1

    :goto_1
    move/from16 v8, v27

    .line 76
    .local v8, "hasImages":Z
    move/from16 v27, v7

    if-nez v27, :cond_4

    move/from16 v27, v8

    if-nez v27, :cond_4

    const/16 v27, 0x0

    move-object/from16 v2, v27

    .line 192
    .end local v2    # "this":Ljavafx/scene/layout/BorderConverter;
    :goto_2
    return-object v2

    .line 72
    .end local v7    # "hasStrokes":Z
    .end local v8    # "hasImages":Z
    .restart local v2    # "this":Ljavafx/scene/layout/BorderConverter;
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 73
    .restart local v7    # "hasStrokes":Z
    :cond_3
    const/16 v27, 0x0

    goto :goto_1

    .line 78
    .restart local v8    # "hasImages":Z
    :cond_4
    const/16 v27, 0x0

    move-object/from16 v9, v27

    .line 79
    .local v9, "borderStrokes":[Ljavafx/scene/layout/BorderStroke;
    move/from16 v27, v7

    if-eqz v27, :cond_18

    .line 81
    move-object/from16 v27, v4

    if-eqz v27, :cond_5

    move-object/from16 v27, v4

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    :goto_3
    move/from16 v10, v27

    .line 82
    .local v10, "lastStrokeFill":I
    move-object/from16 v27, v5

    if-eqz v27, :cond_6

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    :goto_4
    move/from16 v11, v27

    .line 83
    .local v11, "lastStrokeStyle":I
    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_7

    move/from16 v27, v10

    :goto_5
    const/16 v28, 0x1

    add-int/lit8 v27, v27, 0x1

    move/from16 v12, v27

    .line 85
    .local v12, "nLayers":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    .line 86
    .local v13, "tmp":Ljava/lang/Object;
    move-object/from16 v27, v13

    if-nez v27, :cond_8

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lcom/sun/javafx/scene/layout/region/Margins;

    move-object/from16 v27, v0

    :goto_6
    move-object/from16 v14, v27

    .line 87
    .local v14, "borderWidths":[Lcom/sun/javafx/scene/layout/region/Margins;
    move-object/from16 v27, v14

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v15, v27

    .line 89
    .local v15, "lastMarginIndex":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_RADIUS:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    .line 90
    move-object/from16 v27, v13

    if-nez v27, :cond_9

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v27, v0

    :goto_7
    move-object/from16 v16, v27

    .line 91
    .local v16, "borderRadii":[Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v17, v27

    .line 93
    .local v17, "lastRadiusIndex":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_INSETS:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    .line 94
    move-object/from16 v27, v13

    if-nez v27, :cond_a

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/geometry/Insets;

    move-object/from16 v27, v0

    :goto_8
    move-object/from16 v18, v27

    .line 95
    .local v18, "borderInsets":[Ljavafx/geometry/Insets;
    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v19, v27

    .line 97
    .local v19, "lastInsetsIndex":I
    const/16 v27, 0x0

    move/from16 v20, v27

    .local v20, "i":I
    :goto_9
    move/from16 v27, v20

    move/from16 v28, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_18

    .line 101
    move/from16 v27, v11

    if-gez v27, :cond_b

    .line 102
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v27, v0

    move-object/from16 v21, v27

    .line 103
    .local v21, "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v27, v21

    const/16 v28, 0x0

    move-object/from16 v29, v21

    const/16 v30, 0x1

    move-object/from16 v31, v21

    const/16 v32, 0x2

    move-object/from16 v33, v21

    const/16 v34, 0x3

    sget-object v35, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v50, v33

    move/from16 v51, v34

    move-object/from16 v52, v35

    move-object/from16 v33, v52

    move-object/from16 v34, v50

    move/from16 v35, v51

    move-object/from16 v36, v52

    aput-object v36, v34, v35

    move-object/from16 v50, v31

    move/from16 v51, v32

    move-object/from16 v52, v33

    move-object/from16 v31, v52

    move-object/from16 v32, v50

    move/from16 v33, v51

    move-object/from16 v34, v52

    aput-object v34, v32, v33

    move-object/from16 v50, v29

    move/from16 v51, v30

    move-object/from16 v52, v31

    move-object/from16 v29, v52

    move-object/from16 v30, v50

    move/from16 v31, v51

    move-object/from16 v32, v52

    aput-object v32, v30, v31

    aput-object v29, v27, v28

    .line 108
    :goto_a
    move-object/from16 v27, v21

    const/16 v28, 0x0

    aget-object v27, v27, v28

    sget-object v28, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    move-object/from16 v27, v21

    const/16 v28, 0x1

    aget-object v27, v27, v28

    sget-object v28, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    move-object/from16 v27, v21

    const/16 v28, 0x2

    aget-object v27, v27, v28

    sget-object v28, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    move-object/from16 v27, v21

    const/16 v28, 0x3

    aget-object v27, v27, v28

    sget-object v28, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 111
    .line 97
    :goto_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_9

    .line 81
    .end local v10    # "lastStrokeFill":I
    .end local v11    # "lastStrokeStyle":I
    .end local v12    # "nLayers":I
    .end local v13    # "tmp":Ljava/lang/Object;
    .end local v14    # "borderWidths":[Lcom/sun/javafx/scene/layout/region/Margins;
    .end local v15    # "lastMarginIndex":I
    .end local v16    # "borderRadii":[Ljavafx/scene/layout/CornerRadii;
    .end local v17    # "lastRadiusIndex":I
    .end local v18    # "borderInsets":[Ljavafx/geometry/Insets;
    .end local v19    # "lastInsetsIndex":I
    .end local v20    # "i":I
    .end local v21    # "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_5
    const/16 v27, -0x1

    goto/16 :goto_3

    .line 82
    .restart local v10    # "lastStrokeFill":I
    :cond_6
    const/16 v27, -0x1

    goto/16 :goto_4

    .line 83
    .restart local v11    # "lastStrokeStyle":I
    :cond_7
    move/from16 v27, v11

    goto/16 :goto_5

    .line 86
    .restart local v12    # "nLayers":I
    .restart local v13    # "tmp":Ljava/lang/Object;
    :cond_8
    move-object/from16 v27, v13

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/Margins;

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/Margins;

    goto/16 :goto_6

    .line 90
    .restart local v14    # "borderWidths":[Lcom/sun/javafx/scene/layout/region/Margins;
    .restart local v15    # "lastMarginIndex":I
    :cond_9
    move-object/from16 v27, v13

    check-cast v27, [Ljavafx/scene/layout/CornerRadii;

    check-cast v27, [Ljavafx/scene/layout/CornerRadii;

    goto/16 :goto_7

    .line 94
    .restart local v16    # "borderRadii":[Ljavafx/scene/layout/CornerRadii;
    .restart local v17    # "lastRadiusIndex":I
    :cond_a
    move-object/from16 v27, v13

    check-cast v27, [Ljavafx/geometry/Insets;

    check-cast v27, [Ljavafx/geometry/Insets;

    goto/16 :goto_8

    .line 105
    .restart local v18    # "borderInsets":[Ljavafx/geometry/Insets;
    .restart local v19    # "lastInsetsIndex":I
    .restart local v20    # "i":I
    :cond_b
    move-object/from16 v27, v5

    move/from16 v28, v20

    move/from16 v29, v11

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    move/from16 v28, v20

    :goto_c
    aget-object v27, v27, v28

    move-object/from16 v21, v27

    .restart local v21    # "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    goto :goto_a

    .end local v21    # "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_c
    move/from16 v28, v11

    goto :goto_c

    .line 115
    .restart local v21    # "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    :cond_d
    move/from16 v27, v10

    if-gez v27, :cond_f

    .line 116
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/paint/Paint;

    move-object/from16 v27, v0

    move-object/from16 v22, v27

    .line 118
    .local v22, "strokes":[Ljavafx/scene/paint/Paint;
    move-object/from16 v27, v22

    const/16 v28, 0x0

    move-object/from16 v29, v22

    const/16 v30, 0x1

    move-object/from16 v31, v22

    const/16 v32, 0x2

    move-object/from16 v33, v22

    const/16 v34, 0x3

    sget-object v35, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object/from16 v50, v33

    move/from16 v51, v34

    move-object/from16 v52, v35

    move-object/from16 v33, v52

    move-object/from16 v34, v50

    move/from16 v35, v51

    move-object/from16 v36, v52

    aput-object v36, v34, v35

    move-object/from16 v50, v31

    move/from16 v51, v32

    move-object/from16 v52, v33

    move-object/from16 v31, v52

    move-object/from16 v32, v50

    move/from16 v33, v51

    move-object/from16 v34, v52

    aput-object v34, v32, v33

    move-object/from16 v50, v29

    move/from16 v51, v30

    move-object/from16 v52, v31

    move-object/from16 v29, v52

    move-object/from16 v30, v50

    move/from16 v31, v51

    move-object/from16 v32, v52

    aput-object v32, v30, v31

    aput-object v29, v27, v28

    .line 123
    :goto_d
    move-object/from16 v27, v9

    if-nez v27, :cond_e

    move/from16 v27, v12

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v27, v0

    move-object/from16 v9, v27

    .line 125
    :cond_e
    move-object/from16 v27, v14

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_11

    const/16 v27, 0x0

    :goto_e
    move-object/from16 v23, v27

    .line 128
    .local v23, "margins":Lcom/sun/javafx/scene/layout/region/Margins;
    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_13

    sget-object v27, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    :goto_f
    move-object/from16 v24, v27

    .line 131
    .local v24, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_15

    const/16 v27, 0x0

    :goto_10
    move-object/from16 v25, v27

    .line 135
    .local v25, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v27, v9

    move/from16 v28, v20

    new-instance v29, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v50, v29

    move-object/from16 v29, v50

    move-object/from16 v30, v50

    move-object/from16 v31, v22

    const/16 v32, 0x0

    aget-object v31, v31, v32

    move-object/from16 v32, v22

    const/16 v33, 0x1

    aget-object v32, v32, v33

    move-object/from16 v33, v22

    const/16 v34, 0x2

    aget-object v33, v33, v34

    move-object/from16 v34, v22

    const/16 v35, 0x3

    aget-object v34, v34, v35

    move-object/from16 v35, v21

    const/16 v36, 0x0

    aget-object v35, v35, v36

    move-object/from16 v36, v21

    const/16 v37, 0x1

    aget-object v36, v36, v37

    move-object/from16 v37, v21

    const/16 v38, 0x2

    aget-object v37, v37, v38

    move-object/from16 v38, v21

    const/16 v39, 0x3

    aget-object v38, v38, v39

    move-object/from16 v39, v24

    move-object/from16 v40, v23

    if-nez v40, :cond_17

    sget-object v40, Ljavafx/scene/layout/BorderStroke;->DEFAULT_WIDTHS:Ljavafx/scene/layout/BorderWidths;

    .line 141
    :goto_11
    move-object/from16 v41, v25

    invoke-direct/range {v30 .. v41}, Ljavafx/scene/layout/BorderStroke;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/BorderStrokeStyle;Ljavafx/scene/layout/CornerRadii;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;)V

    aput-object v29, v27, v28

    goto/16 :goto_b

    .line 120
    .end local v22    # "strokes":[Ljavafx/scene/paint/Paint;
    .end local v23    # "margins":Lcom/sun/javafx/scene/layout/region/Margins;
    .end local v24    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v25    # "insets":Ljavafx/geometry/Insets;
    :cond_f
    move-object/from16 v27, v4

    move/from16 v28, v20

    move/from16 v29, v10

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_10

    move/from16 v28, v20

    :goto_12
    aget-object v27, v27, v28

    move-object/from16 v22, v27

    .restart local v22    # "strokes":[Ljavafx/scene/paint/Paint;
    goto/16 :goto_d

    .end local v22    # "strokes":[Ljavafx/scene/paint/Paint;
    :cond_10
    move/from16 v28, v10

    goto :goto_12

    .line 125
    .restart local v22    # "strokes":[Ljavafx/scene/paint/Paint;
    :cond_11
    move-object/from16 v27, v14

    move/from16 v28, v20

    move/from16 v29, v15

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_12

    move/from16 v28, v20

    :goto_13
    aget-object v27, v27, v28

    goto/16 :goto_e

    :cond_12
    move/from16 v28, v15

    goto :goto_13

    .line 128
    .restart local v23    # "margins":Lcom/sun/javafx/scene/layout/region/Margins;
    :cond_13
    move-object/from16 v27, v16

    move/from16 v28, v20

    move/from16 v29, v17

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_14

    move/from16 v28, v20

    :goto_14
    aget-object v27, v27, v28

    goto/16 :goto_f

    :cond_14
    move/from16 v28, v17

    goto :goto_14

    .line 131
    .restart local v24    # "radii":Ljavafx/scene/layout/CornerRadii;
    :cond_15
    move-object/from16 v27, v18

    move/from16 v28, v20

    move/from16 v29, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_16

    move/from16 v28, v20

    :goto_15
    aget-object v27, v27, v28

    goto/16 :goto_10

    :cond_16
    move/from16 v28, v19

    goto :goto_15

    .line 135
    .restart local v25    # "insets":Ljavafx/geometry/Insets;
    :cond_17
    new-instance v40, Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v50, v40

    move-object/from16 v40, v50

    move-object/from16 v41, v50

    move-object/from16 v42, v23

    .line 141
    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/scene/layout/region/Margins;->getTop()D

    move-result-wide v42

    move-object/from16 v44, v23

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/scene/layout/region/Margins;->getRight()D

    move-result-wide v44

    move-object/from16 v46, v23

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/layout/region/Margins;->getBottom()D

    move-result-wide v46

    move-object/from16 v48, v23

    invoke-virtual/range {v48 .. v48}, Lcom/sun/javafx/scene/layout/region/Margins;->getLeft()D

    move-result-wide v48

    invoke-direct/range {v41 .. v49}, Ljavafx/scene/layout/BorderWidths;-><init>(DDDD)V

    goto/16 :goto_11

    .line 146
    .end local v10    # "lastStrokeFill":I
    .end local v11    # "lastStrokeStyle":I
    .end local v12    # "nLayers":I
    .end local v13    # "tmp":Ljava/lang/Object;
    .end local v14    # "borderWidths":[Lcom/sun/javafx/scene/layout/region/Margins;
    .end local v15    # "lastMarginIndex":I
    .end local v16    # "borderRadii":[Ljavafx/scene/layout/CornerRadii;
    .end local v17    # "lastRadiusIndex":I
    .end local v18    # "borderInsets":[Ljavafx/geometry/Insets;
    .end local v19    # "lastInsetsIndex":I
    .end local v20    # "i":I
    .end local v21    # "styles":[Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v22    # "strokes":[Ljavafx/scene/paint/Paint;
    .end local v23    # "margins":Lcom/sun/javafx/scene/layout/region/Margins;
    .end local v24    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v25    # "insets":Ljavafx/geometry/Insets;
    :cond_18
    const/16 v27, 0x0

    move-object/from16 v10, v27

    .line 147
    .local v10, "borderImages":[Ljavafx/scene/layout/BorderImage;
    move/from16 v27, v8

    if-eqz v27, :cond_26

    .line 148
    move-object/from16 v27, v6

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/layout/BorderImage;

    move-object/from16 v27, v0

    move-object/from16 v10, v27

    .line 149
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_IMAGE_REPEAT:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    .line 150
    .local v11, "tmp":Ljava/lang/Object;
    move-object/from16 v27, v11

    if-nez v27, :cond_19

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object/from16 v27, v0

    :goto_16
    move-object/from16 v12, v27

    .line 151
    .local v12, "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    move-object/from16 v27, v12

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v13, v27

    .line 153
    .local v13, "lastRepeatIndex":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SLICE:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    .line 154
    move-object/from16 v27, v11

    if-nez v27, :cond_1a

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object/from16 v27, v0

    :goto_17
    move-object/from16 v14, v27

    .line 155
    .local v14, "slices":[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    move-object/from16 v27, v14

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v15, v27

    .line 157
    .local v15, "lastSlicesIndex":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_IMAGE_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    .line 158
    move-object/from16 v27, v11

    if-nez v27, :cond_1b

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v27, v0

    :goto_18
    move-object/from16 v16, v27

    .line 159
    .local v16, "widths":[Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v17, v27

    .line 161
    .local v17, "lastWidthsIndex":I
    move-object/from16 v27, v3

    sget-object v28, Ljavafx/scene/layout/Border;->BORDER_IMAGE_INSETS:Ljavafx/css/CssMetaData;

    invoke-interface/range {v27 .. v28}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v11, v27

    .line 162
    move-object/from16 v27, v11

    if-nez v27, :cond_1c

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljavafx/geometry/Insets;

    move-object/from16 v27, v0

    :goto_19
    move-object/from16 v18, v27

    .line 163
    .local v18, "insets":[Ljavafx/geometry/Insets;
    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v19, v27

    .line 165
    .restart local v19    # "lastInsetsIndex":I
    const/16 v27, 0x0

    move/from16 v20, v27

    .restart local v20    # "i":I
    :goto_1a
    move/from16 v27, v20

    move-object/from16 v28, v6

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_26

    .line 166
    move-object/from16 v27, v6

    move/from16 v28, v20

    aget-object v27, v27, v28

    if-nez v27, :cond_1d

    .line 165
    :goto_1b
    add-int/lit8 v20, v20, 0x1

    goto :goto_1a

    .line 150
    .end local v12    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v13    # "lastRepeatIndex":I
    .end local v14    # "slices":[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .end local v15    # "lastSlicesIndex":I
    .end local v16    # "widths":[Ljavafx/scene/layout/BorderWidths;
    .end local v17    # "lastWidthsIndex":I
    .end local v18    # "insets":[Ljavafx/geometry/Insets;
    .end local v19    # "lastInsetsIndex":I
    .end local v20    # "i":I
    :cond_19
    move-object/from16 v27, v11

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    goto/16 :goto_16

    .line 154
    .restart local v12    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .restart local v13    # "lastRepeatIndex":I
    :cond_1a
    move-object/from16 v27, v11

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    check-cast v27, [Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    goto/16 :goto_17

    .line 158
    .restart local v14    # "slices":[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .restart local v15    # "lastSlicesIndex":I
    :cond_1b
    move-object/from16 v27, v11

    check-cast v27, [Ljavafx/scene/layout/BorderWidths;

    check-cast v27, [Ljavafx/scene/layout/BorderWidths;

    goto :goto_18

    .line 162
    .restart local v16    # "widths":[Ljavafx/scene/layout/BorderWidths;
    .restart local v17    # "lastWidthsIndex":I
    :cond_1c
    move-object/from16 v27, v11

    check-cast v27, [Ljavafx/geometry/Insets;

    check-cast v27, [Ljavafx/geometry/Insets;

    goto :goto_19

    .line 167
    .restart local v18    # "insets":[Ljavafx/geometry/Insets;
    .restart local v19    # "lastInsetsIndex":I
    .restart local v20    # "i":I
    :cond_1d
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v21, v27

    .local v21, "repeatX":Ljavafx/scene/layout/BorderRepeat;
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v22, v27

    .line 168
    .local v22, "repeatY":Ljavafx/scene/layout/BorderRepeat;
    move-object/from16 v27, v12

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_1e

    .line 169
    move-object/from16 v27, v12

    move/from16 v28, v20

    move/from16 v29, v13

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1f

    move/from16 v28, v20

    :goto_1c
    aget-object v27, v27, v28

    move-object/from16 v23, v27

    .line 170
    .local v23, "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    sget-object v27, Ljavafx/scene/layout/BorderConverter$1;->$SwitchMap$javafx$scene$layout$BackgroundRepeat:[I

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BackgroundRepeat;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 176
    :goto_1d
    sget-object v27, Ljavafx/scene/layout/BorderConverter$1;->$SwitchMap$javafx$scene$layout$BackgroundRepeat:[I

    move-object/from16 v28, v23

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BackgroundRepeat;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_1

    .line 184
    .end local v23    # "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    :cond_1e
    :goto_1e
    move-object/from16 v27, v14

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_21

    move-object/from16 v27, v14

    move/from16 v28, v20

    move/from16 v29, v15

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_20

    move/from16 v28, v20

    :goto_1f
    aget-object v27, v27, v28

    :goto_20
    move-object/from16 v23, v27

    .line 185
    .local v23, "slice":Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    move-object/from16 v27, v18

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_23

    move-object/from16 v27, v18

    move/from16 v28, v20

    move/from16 v29, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_22

    move/from16 v28, v20

    :goto_21
    aget-object v27, v27, v28

    :goto_22
    move-object/from16 v24, v27

    .line 186
    .local v24, "inset":Ljavafx/geometry/Insets;
    move-object/from16 v27, v16

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_25

    move-object/from16 v27, v16

    move/from16 v28, v20

    move/from16 v29, v17

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_24

    move/from16 v28, v20

    :goto_23
    aget-object v27, v27, v28

    :goto_24
    move-object/from16 v25, v27

    .line 187
    .local v25, "width":Ljavafx/scene/layout/BorderWidths;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v27

    move-object/from16 v28, v6

    move/from16 v29, v20

    aget-object v28, v28, v29

    invoke-virtual/range {v27 .. v28}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v27

    move-object/from16 v26, v27

    .line 188
    .local v26, "img":Ljavafx/scene/image/Image;
    move-object/from16 v27, v10

    move/from16 v28, v20

    new-instance v29, Ljavafx/scene/layout/BorderImage;

    move-object/from16 v50, v29

    move-object/from16 v29, v50

    move-object/from16 v30, v50

    move-object/from16 v31, v26

    move-object/from16 v32, v25

    move-object/from16 v33, v24

    move-object/from16 v34, v23

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->widths:Ljavafx/scene/layout/BorderWidths;

    move-object/from16 v34, v0

    move-object/from16 v35, v23

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->filled:Z

    move/from16 v35, v0

    move-object/from16 v36, v21

    move-object/from16 v37, v22

    invoke-direct/range {v30 .. v37}, Ljavafx/scene/layout/BorderImage;-><init>(Ljavafx/scene/image/Image;Ljavafx/scene/layout/BorderWidths;Ljavafx/geometry/Insets;Ljavafx/scene/layout/BorderWidths;ZLjavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;)V

    aput-object v29, v27, v28

    goto/16 :goto_1b

    .line 169
    .end local v23    # "slice":Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .end local v24    # "inset":Ljavafx/geometry/Insets;
    .end local v25    # "width":Ljavafx/scene/layout/BorderWidths;
    .end local v26    # "img":Ljavafx/scene/image/Image;
    :cond_1f
    move/from16 v28, v13

    goto/16 :goto_1c

    .line 171
    .local v23, "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    :pswitch_0
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->SPACE:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v21, v27

    goto/16 :goto_1d

    .line 172
    :pswitch_1
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->ROUND:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v21, v27

    goto/16 :goto_1d

    .line 173
    :pswitch_2
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->REPEAT:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v21, v27

    goto/16 :goto_1d

    .line 174
    :pswitch_3
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v21, v27

    goto/16 :goto_1d

    .line 177
    :pswitch_4
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->SPACE:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v22, v27

    goto/16 :goto_1e

    .line 178
    :pswitch_5
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->ROUND:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v22, v27

    goto/16 :goto_1e

    .line 179
    :pswitch_6
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->REPEAT:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v22, v27

    goto/16 :goto_1e

    .line 180
    :pswitch_7
    sget-object v27, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v22, v27

    goto/16 :goto_1e

    .line 184
    .end local v23    # "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    :cond_20
    move/from16 v28, v15

    goto/16 :goto_1f

    :cond_21
    sget-object v27, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->DEFAULT:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    goto/16 :goto_20

    .line 185
    .local v23, "slice":Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    :cond_22
    move/from16 v28, v19

    goto/16 :goto_21

    :cond_23
    sget-object v27, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    goto/16 :goto_22

    .line 186
    .restart local v24    # "inset":Ljavafx/geometry/Insets;
    :cond_24
    move/from16 v28, v17

    goto/16 :goto_23

    :cond_25
    sget-object v27, Ljavafx/scene/layout/BorderWidths;->DEFAULT:Ljavafx/scene/layout/BorderWidths;

    goto/16 :goto_24

    .line 192
    .end local v11    # "tmp":Ljava/lang/Object;
    .end local v12    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v13    # "lastRepeatIndex":I
    .end local v14    # "slices":[Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .end local v15    # "lastSlicesIndex":I
    .end local v16    # "widths":[Ljavafx/scene/layout/BorderWidths;
    .end local v17    # "lastWidthsIndex":I
    .end local v18    # "insets":[Ljavafx/geometry/Insets;
    .end local v19    # "lastInsetsIndex":I
    .end local v20    # "i":I
    .end local v21    # "repeatX":Ljavafx/scene/layout/BorderRepeat;
    .end local v22    # "repeatY":Ljavafx/scene/layout/BorderRepeat;
    .end local v23    # "slice":Lcom/sun/javafx/scene/layout/region/BorderImageSlices;
    .end local v24    # "inset":Ljavafx/geometry/Insets;
    :cond_26
    move-object/from16 v27, v9

    if-nez v27, :cond_27

    move-object/from16 v27, v10

    if-nez v27, :cond_27

    const/16 v27, 0x0

    :goto_25
    move-object/from16 v2, v27

    goto/16 :goto_2

    :cond_27
    new-instance v27, Ljavafx/scene/layout/Border;

    move-object/from16 v50, v27

    move-object/from16 v27, v50

    move-object/from16 v28, v50

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    invoke-direct/range {v28 .. v30}, Ljavafx/scene/layout/Border;-><init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V

    goto :goto_25

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BorderConverter;
    const-string v1, "BorderConverter"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/BorderConverter;
    return-object v0
.end method
