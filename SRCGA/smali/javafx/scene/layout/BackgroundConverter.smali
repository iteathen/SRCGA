.class Ljavafx/scene/layout/BackgroundConverter;
.super Lcom/sun/javafx/css/StyleConverterImpl;
.source "BackgroundConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/css/StyleConverterImpl",
        "<[",
        "Ljavafx/css/ParsedValue;",
        "Ljavafx/scene/layout/Background;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljavafx/css/StyleConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/StyleConverter",
            "<[",
            "Ljavafx/css/ParsedValue;",
            "Ljavafx/scene/layout/Background;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljavafx/scene/layout/BackgroundConverter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/layout/BackgroundConverter;-><init>()V

    sput-object v0, Ljavafx/scene/layout/BackgroundConverter;->INSTANCE:Ljavafx/css/StyleConverter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundConverter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleConverterImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/util/Map;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/BackgroundConverter;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/layout/BackgroundConverter;->convert(Ljava/util/Map;)Ljavafx/scene/layout/Background;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/layout/BackgroundConverter;
    return-object v0
.end method

.method public convert(Ljava/util/Map;)Ljavafx/scene/layout/Background;
    .locals 32
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
            "Ljavafx/scene/layout/Background;"
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/BackgroundConverter;
    move-object/from16 v3, p1

    .local v3, "convertedValues":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;Ljava/lang/Object;>;"
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_COLOR:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljavafx/scene/paint/Paint;

    check-cast v22, [Ljavafx/scene/paint/Paint;

    move-object/from16 v4, v22

    .line 49
    .local v4, "fills":[Ljavafx/scene/paint/Paint;
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_IMAGE:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v5, v22

    .line 50
    .local v5, "imageUrls":[Ljava/lang/String;
    move-object/from16 v22, v4

    if-eqz v22, :cond_0

    move-object/from16 v22, v4

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_0

    const/16 v22, 0x1

    :goto_0
    move/from16 v6, v22

    .line 51
    .local v6, "hasFills":Z
    move-object/from16 v22, v5

    if-eqz v22, :cond_1

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_1

    const/16 v22, 0x1

    :goto_1
    move/from16 v7, v22

    .line 54
    .local v7, "hasImages":Z
    move/from16 v22, v6

    if-nez v22, :cond_2

    move/from16 v22, v7

    if-nez v22, :cond_2

    const/16 v22, 0x0

    move-object/from16 v2, v22

    .line 116
    .end local v2    # "this":Ljavafx/scene/layout/BackgroundConverter;
    :goto_2
    return-object v2

    .line 50
    .end local v6    # "hasFills":Z
    .end local v7    # "hasImages":Z
    .restart local v2    # "this":Ljavafx/scene/layout/BackgroundConverter;
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 51
    .restart local v6    # "hasFills":Z
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 57
    .restart local v7    # "hasImages":Z
    :cond_2
    const/16 v22, 0x0

    move-object/from16 v8, v22

    .line 58
    .local v8, "backgroundFills":[Ljavafx/scene/layout/BackgroundFill;
    move/from16 v22, v6

    if-eqz v22, :cond_9

    .line 59
    move-object/from16 v22, v4

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v22, v0

    move-object/from16 v8, v22

    .line 61
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_INSETS:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v9, v22

    .line 62
    .local v9, "tmp":Ljava/lang/Object;
    move-object/from16 v22, v9

    if-nez v22, :cond_3

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/geometry/Insets;

    move-object/from16 v22, v0

    :goto_3
    move-object/from16 v10, v22

    .line 64
    .local v10, "insets":[Ljavafx/geometry/Insets;
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_RADIUS:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v9, v22

    .line 65
    move-object/from16 v22, v9

    if-nez v22, :cond_4

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/scene/layout/CornerRadii;

    move-object/from16 v22, v0

    :goto_4
    move-object/from16 v11, v22

    .line 67
    .local v11, "radii":[Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v22, v10

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v12, v22

    .line 68
    .local v12, "lastInsetsIndex":I
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v13, v22

    .line 69
    .local v13, "lastRadiiIndex":I
    const/16 v22, 0x0

    move/from16 v14, v22

    .local v14, "i":I
    :goto_5
    move/from16 v22, v14

    move-object/from16 v23, v4

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 70
    move-object/from16 v22, v10

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_6

    move-object/from16 v22, v10

    move/from16 v23, v14

    move/from16 v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_5

    move/from16 v23, v14

    :goto_6
    aget-object v22, v22, v23

    :goto_7
    move-object/from16 v15, v22

    .line 71
    .local v15, "in":Ljavafx/geometry/Insets;
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_8

    move-object/from16 v22, v11

    move/from16 v23, v14

    move/from16 v24, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_7

    move/from16 v23, v14

    :goto_8
    aget-object v22, v22, v23

    :goto_9
    move-object/from16 v16, v22

    .line 72
    .local v16, "ra":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v22, v8

    move/from16 v23, v14

    new-instance v24, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v4

    move/from16 v27, v14

    aget-object v26, v26, v27

    move-object/from16 v27, v16

    move-object/from16 v28, v15

    invoke-direct/range {v25 .. v28}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v24, v22, v23

    .line 69
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 62
    .end local v10    # "insets":[Ljavafx/geometry/Insets;
    .end local v11    # "radii":[Ljavafx/scene/layout/CornerRadii;
    .end local v12    # "lastInsetsIndex":I
    .end local v13    # "lastRadiiIndex":I
    .end local v14    # "i":I
    .end local v15    # "in":Ljavafx/geometry/Insets;
    .end local v16    # "ra":Ljavafx/scene/layout/CornerRadii;
    :cond_3
    move-object/from16 v22, v9

    check-cast v22, [Ljavafx/geometry/Insets;

    check-cast v22, [Ljavafx/geometry/Insets;

    goto/16 :goto_3

    .line 65
    .restart local v10    # "insets":[Ljavafx/geometry/Insets;
    :cond_4
    move-object/from16 v22, v9

    check-cast v22, [Ljavafx/scene/layout/CornerRadii;

    check-cast v22, [Ljavafx/scene/layout/CornerRadii;

    goto/16 :goto_4

    .line 70
    .restart local v11    # "radii":[Ljavafx/scene/layout/CornerRadii;
    .restart local v12    # "lastInsetsIndex":I
    .restart local v13    # "lastRadiiIndex":I
    .restart local v14    # "i":I
    :cond_5
    move/from16 v23, v12

    goto :goto_6

    :cond_6
    sget-object v22, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    goto :goto_7

    .line 71
    .restart local v15    # "in":Ljavafx/geometry/Insets;
    :cond_7
    move/from16 v23, v13

    goto :goto_8

    :cond_8
    sget-object v22, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    goto :goto_9

    .line 77
    .end local v9    # "tmp":Ljava/lang/Object;
    .end local v10    # "insets":[Ljavafx/geometry/Insets;
    .end local v11    # "radii":[Ljavafx/scene/layout/CornerRadii;
    .end local v12    # "lastInsetsIndex":I
    .end local v13    # "lastRadiiIndex":I
    .end local v14    # "i":I
    .end local v15    # "in":Ljavafx/geometry/Insets;
    :cond_9
    const/16 v22, 0x0

    move-object/from16 v9, v22

    .line 78
    .local v9, "backgroundImages":[Ljavafx/scene/layout/BackgroundImage;
    move/from16 v22, v7

    if-eqz v22, :cond_17

    .line 80
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundImage;

    move-object/from16 v22, v0

    move-object/from16 v9, v22

    .line 82
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_REPEAT:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    .line 83
    .local v10, "tmp":Ljava/lang/Object;
    move-object/from16 v22, v10

    if-nez v22, :cond_a

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object/from16 v22, v0

    :goto_a
    move-object/from16 v11, v22

    .line 85
    .local v11, "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_POSITION:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    .line 86
    move-object/from16 v22, v10

    if-nez v22, :cond_b

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundPosition;

    move-object/from16 v22, v0

    :goto_b
    move-object/from16 v12, v22

    .line 88
    .local v12, "positions":[Ljavafx/scene/layout/BackgroundPosition;
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/layout/Background;->BACKGROUND_SIZE:Ljavafx/css/CssMetaData;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    .line 89
    move-object/from16 v22, v10

    if-nez v22, :cond_c

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v22, v0

    :goto_c
    move-object/from16 v13, v22

    .line 91
    .local v13, "sizes":[Ljavafx/scene/layout/BackgroundSize;
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v14, v22

    .line 92
    .local v14, "lastRepeatIndex":I
    move-object/from16 v22, v12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v15, v22

    .line 93
    .local v15, "lastPositionIndex":I
    move-object/from16 v22, v13

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v16, v22

    .line 94
    .local v16, "lastSizeIndex":I
    const/16 v22, 0x0

    move/from16 v17, v22

    .local v17, "i":I
    :goto_d
    move/from16 v22, v17

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 96
    move-object/from16 v22, v5

    move/from16 v23, v17

    aget-object v22, v22, v23

    if-nez v22, :cond_d

    .line 94
    :goto_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 83
    .end local v11    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v12    # "positions":[Ljavafx/scene/layout/BackgroundPosition;
    .end local v13    # "sizes":[Ljavafx/scene/layout/BackgroundSize;
    .end local v14    # "lastRepeatIndex":I
    .end local v15    # "lastPositionIndex":I
    .end local v16    # "lastSizeIndex":I
    .end local v17    # "i":I
    :cond_a
    move-object/from16 v22, v10

    check-cast v22, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    check-cast v22, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    goto :goto_a

    .line 86
    .restart local v11    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    :cond_b
    move-object/from16 v22, v10

    check-cast v22, [Ljavafx/scene/layout/BackgroundPosition;

    check-cast v22, [Ljavafx/scene/layout/BackgroundPosition;

    goto :goto_b

    .line 89
    .restart local v12    # "positions":[Ljavafx/scene/layout/BackgroundPosition;
    :cond_c
    move-object/from16 v22, v10

    check-cast v22, [Ljavafx/scene/layout/BackgroundSize;

    check-cast v22, [Ljavafx/scene/layout/BackgroundSize;

    goto :goto_c

    .line 98
    .restart local v13    # "sizes":[Ljavafx/scene/layout/BackgroundSize;
    .restart local v14    # "lastRepeatIndex":I
    .restart local v15    # "lastPositionIndex":I
    .restart local v16    # "lastSizeIndex":I
    .restart local v17    # "i":I
    :cond_d
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v22

    move-object/from16 v23, v5

    move/from16 v24, v17

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/css/StyleManager;->getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;

    move-result-object v22

    move-object/from16 v18, v22

    .line 99
    .local v18, "image":Ljavafx/scene/image/Image;
    move-object/from16 v22, v18

    if-nez v22, :cond_e

    goto :goto_e

    .line 101
    :cond_e
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_10

    move-object/from16 v22, v11

    move/from16 v23, v17

    move/from16 v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    move/from16 v23, v17

    :goto_f
    aget-object v22, v22, v23

    :goto_10
    move-object/from16 v19, v22

    .line 103
    .local v19, "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    move-object/from16 v22, v12

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_12

    move-object/from16 v22, v12

    move/from16 v23, v17

    move/from16 v24, v15

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    move/from16 v23, v17

    :goto_11
    aget-object v22, v22, v23

    :goto_12
    move-object/from16 v20, v22

    .line 105
    .local v20, "position":Ljavafx/scene/layout/BackgroundPosition;
    move-object/from16 v22, v13

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_14

    move-object/from16 v22, v13

    move/from16 v23, v17

    move/from16 v24, v16

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_13

    move/from16 v23, v17

    :goto_13
    aget-object v22, v22, v23

    :goto_14
    move-object/from16 v21, v22

    .line 107
    .local v21, "size":Ljavafx/scene/layout/BackgroundSize;
    move-object/from16 v22, v9

    move/from16 v23, v17

    new-instance v24, Ljavafx/scene/layout/BackgroundImage;

    move-object/from16 v31, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v31

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    if-nez v27, :cond_15

    const/16 v27, 0x0

    :goto_15
    move-object/from16 v28, v19

    if-nez v28, :cond_16

    const/16 v28, 0x0

    :goto_16
    move-object/from16 v29, v20

    move-object/from16 v30, v21

    invoke-direct/range {v25 .. v30}, Ljavafx/scene/layout/BackgroundImage;-><init>(Ljavafx/scene/image/Image;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundPosition;Ljavafx/scene/layout/BackgroundSize;)V

    aput-object v24, v22, v23

    goto/16 :goto_e

    .line 101
    .end local v19    # "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v20    # "position":Ljavafx/scene/layout/BackgroundPosition;
    .end local v21    # "size":Ljavafx/scene/layout/BackgroundSize;
    :cond_f
    move/from16 v23, v14

    goto :goto_f

    :cond_10
    const/16 v22, 0x0

    goto :goto_10

    .line 103
    .restart local v19    # "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    :cond_11
    move/from16 v23, v15

    goto :goto_11

    :cond_12
    const/16 v22, 0x0

    goto :goto_12

    .line 105
    .restart local v20    # "position":Ljavafx/scene/layout/BackgroundPosition;
    :cond_13
    move/from16 v23, v16

    goto :goto_13

    :cond_14
    const/16 v22, 0x0

    goto :goto_14

    .line 107
    .restart local v21    # "size":Ljavafx/scene/layout/BackgroundSize;
    :cond_15
    move-object/from16 v27, v19

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v27, v0

    goto :goto_15

    :cond_16
    move-object/from16 v28, v19

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/layout/region/RepeatStruct;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v28, v0

    goto :goto_16

    .line 116
    .end local v10    # "tmp":Ljava/lang/Object;
    .end local v11    # "repeats":[Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v12    # "positions":[Ljavafx/scene/layout/BackgroundPosition;
    .end local v13    # "sizes":[Ljavafx/scene/layout/BackgroundSize;
    .end local v14    # "lastRepeatIndex":I
    .end local v15    # "lastPositionIndex":I
    .end local v16    # "lastSizeIndex":I
    .end local v17    # "i":I
    .end local v18    # "image":Ljavafx/scene/image/Image;
    .end local v19    # "repeat":Lcom/sun/javafx/scene/layout/region/RepeatStruct;
    .end local v20    # "position":Ljavafx/scene/layout/BackgroundPosition;
    .end local v21    # "size":Ljavafx/scene/layout/BackgroundSize;
    :cond_17
    new-instance v22, Ljavafx/scene/layout/Background;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    invoke-direct/range {v23 .. v25}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V

    move-object/from16 v2, v22

    goto/16 :goto_2
.end method
