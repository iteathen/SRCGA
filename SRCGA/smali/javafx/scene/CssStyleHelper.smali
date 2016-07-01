.class final Ljavafx/scene/CssStyleHelper;
.super Ljava/lang/Object;
.source "CssStyleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/CssStyleHelper$CacheContainer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Lsun/util/logging/PlatformLogger;

.field private static final NULL_PSEUDO_CLASS_STATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation
.end field

.field private static final dummyFontProperty:Ljavafx/css/CssMetaData;


# instance fields
.field private cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

.field private triggerStates:Lcom/sun/javafx/css/PseudoClassState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 76
    const-class v0, Ljavafx/scene/CssStyleHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/CssStyleHelper;->$assertionsDisabled:Z

    .line 78
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    .line 1103
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/CssStyleHelper;->NULL_PSEUDO_CLASS_STATE:Ljava/util/Set;

    .line 1527
    new-instance v0, Ljavafx/scene/CssStyleHelper$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "-fx-font"

    .line 1528
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavafx/scene/CssStyleHelper$1;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    sput-object v0, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    .line 1527
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 485
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/PseudoClassState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    iput-object v2, v1, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    .line 81
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/PseudoClassState;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    iput-object v2, v1, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    .line 82
    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/CssStyleHelper;)Ljavafx/scene/CssStyleHelper$CacheContainer;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper;
    return-object v0
.end method

.method private calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/CascadingStyle;",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;",
            "Ljavafx/css/Styleable;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ")",
            "Lcom/sun/javafx/css/CalculatedValue;"
        }
    .end annotation

    .prologue
    .line 1375
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v3, p1

    .local v3, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v4, p2

    .local v4, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v5, p3

    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object/from16 v6, p4

    .local v6, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v7, p5

    .local v7, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v8, p6

    .local v8, "originatingStyleable":Ljavafx/css/Styleable;
    move-object/from16 v9, p7

    .local v9, "fontFromCacheEntry":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v21

    move-object/from16 v10, v21

    .line 1376
    .local v10, "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v21, v10

    if-eqz v21, :cond_14

    const-string v21, "null"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    const-string v21, "none"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 1378
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 1381
    .local v11, "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    :try_start_0
    new-instance v21, Ljavafx/beans/property/SimpleObjectProperty;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    move-object/from16 v12, v21

    .line 1382
    .local v12, "whence":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/css/StyleOrigin;>;"
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v12

    new-instance v27, Ljava/util/HashSet;

    move-object/from16 v29, v27

    move-object/from16 v27, v29

    move-object/from16 v28, v29

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    invoke-direct/range {v21 .. v27}, Ljavafx/scene/CssStyleHelper;->resolveLookups(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/beans/property/ObjectProperty;Ljava/util/Set;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v21

    move-object/from16 v11, v21

    .line 1384
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 1387
    .local v13, "property":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 1388
    .local v14, "val":Ljava/lang/Object;
    const-string v21, "-fx-font"

    move-object/from16 v22, v13

    .line 1389
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "-fx-font-size"

    move-object/from16 v22, v13

    .line 1390
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_0
    const/16 v21, 0x1

    :goto_0
    move/from16 v15, v21

    .line 1392
    .local v15, "isFontProperty":Z
    move-object/from16 v21, v11

    move/from16 v22, v15

    invoke-static/range {v21 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->containsFontRelativeSize(Ljavafx/css/ParsedValue;Z)Z

    move-result v21

    move/from16 v16, v21

    .line 1408
    .local v16, "isRelative":Z
    const/16 v21, 0x0

    move-object/from16 v17, v21

    .line 1410
    .local v17, "fontForFontRelativeSizes":Ljavafx/scene/text/Font;
    move/from16 v21, v16

    if-eqz v21, :cond_5

    move/from16 v21, v15

    if-eqz v21, :cond_5

    move-object/from16 v21, v9

    if-eqz v21, :cond_1

    move-object/from16 v21, v9

    .line 1411
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1413
    :cond_1
    move-object/from16 v21, v4

    move-object/from16 v18, v21

    .line 1414
    .local v18, "parent":Ljavafx/css/Styleable;
    move-object/from16 v21, v9

    move-object/from16 v19, v21

    .line 1417
    .local v19, "childsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljavafx/scene/CssStyleHelper;->getCachedFont(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v21

    move-object/from16 v20, v21

    .line 1419
    .local v20, "parentsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v21, v20

    if-eqz v21, :cond_4

    .line 1421
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1427
    move-object/from16 v21, v19

    if-eqz v21, :cond_3

    move-object/from16 v21, v20

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/CalculatedValue;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1428
    :cond_3
    move-object/from16 v21, v20

    move-object/from16 v19, v21

    .line 1440
    :cond_4
    :goto_1
    move-object/from16 v21, v17

    if-nez v21, :cond_5

    move-object/from16 v21, v18

    .line 1441
    invoke-interface/range {v21 .. v21}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v18, v22

    if-nez v21, :cond_2

    .line 1446
    .end local v18    # "parent":Ljavafx/css/Styleable;
    .end local v19    # "childsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    .end local v20    # "parentsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    :cond_5
    move-object/from16 v21, v17

    if-nez v21, :cond_6

    .line 1447
    move-object/from16 v21, v9

    if-eqz v21, :cond_b

    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v21

    if-nez v21, :cond_b

    .line 1448
    move-object/from16 v21, v9

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/text/Font;

    move-object/from16 v17, v21

    .line 1454
    :cond_6
    :goto_2
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/CssMetaData;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v21

    move-object/from16 v18, v21

    .line 1460
    .local v18, "cssMetaDataConverter":Ljavafx/css/StyleConverter;
    move-object/from16 v21, v18

    invoke-static {}, Ljavafx/css/StyleConverter;->getInsetsConverter()Ljavafx/css/StyleConverter;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1461
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Ljavafx/css/ParsedValue;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1465
    new-instance v21, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljavafx/css/ParsedValue;

    move-object/from16 v23, v0

    move-object/from16 v29, v23

    move-object/from16 v23, v29

    move-object/from16 v24, v29

    const/16 v25, 0x0

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/css/ParsedValue;

    aput-object v26, v24, v25

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object/from16 v11, v21

    .line 1467
    :cond_7
    move-object/from16 v21, v18

    move-object/from16 v22, v11

    move-object/from16 v23, v17

    invoke-virtual/range {v21 .. v23}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    .line 1474
    :goto_3
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/css/StyleOrigin;

    move-object/from16 v19, v21

    .line 1475
    .local v19, "origin":Ljavafx/css/StyleOrigin;
    new-instance v21, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v14

    move-object/from16 v24, v19

    move/from16 v25, v16

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v2, v21

    .line 1523
    .end local v2    # "this":Ljavafx/scene/CssStyleHelper;
    .end local v11    # "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "whence":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/css/StyleOrigin;>;"
    .end local v13    # "property":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/Object;
    .end local v15    # "isFontProperty":Z
    .end local v16    # "isRelative":Z
    .end local v17    # "fontForFontRelativeSizes":Ljavafx/scene/text/Font;
    .end local v18    # "cssMetaDataConverter":Ljavafx/css/StyleConverter;
    .end local v19    # "origin":Ljavafx/css/StyleOrigin;
    :goto_4
    return-object v2

    .line 1390
    .restart local v2    # "this":Ljavafx/scene/CssStyleHelper;
    .restart local v11    # "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    .restart local v12    # "whence":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/css/StyleOrigin;>;"
    .restart local v13    # "property":Ljava/lang/String;
    .restart local v14    # "val":Ljava/lang/Object;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1430
    .restart local v15    # "isFontProperty":Z
    .restart local v16    # "isRelative":Z
    .restart local v17    # "fontForFontRelativeSizes":Ljavafx/scene/text/Font;
    .local v18, "parent":Ljavafx/css/Styleable;
    .local v19, "childsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    .restart local v20    # "parentsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    :cond_9
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/text/Font;

    move-object/from16 v17, v21

    goto/16 :goto_1

    .line 1435
    :cond_a
    move-object/from16 v21, v20

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/text/Font;

    move-object/from16 v17, v21

    goto/16 :goto_1

    .line 1450
    .end local v18    # "parent":Ljavafx/css/Styleable;
    .end local v19    # "childsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    .end local v20    # "parentsCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    :cond_b
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v21

    move-object/from16 v17, v21

    goto/16 :goto_2

    .line 1469
    .local v18, "cssMetaDataConverter":Ljavafx/css/StyleConverter;
    :cond_c
    move-object/from16 v21, v11

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v21

    if-eqz v21, :cond_d

    .line 1470
    move-object/from16 v21, v11

    move-object/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/ParsedValueImpl;->convert(Ljavafx/scene/text/Font;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v14, v21

    goto :goto_3

    .line 1472
    :cond_d
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Ljavafx/css/CssMetaData;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v21

    move-object/from16 v22, v11

    move-object/from16 v23, v17

    invoke-virtual/range {v21 .. v23}, Ljavafx/css/StyleConverter;->convert(Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v21

    move-object/from16 v14, v21

    goto :goto_3

    .line 1477
    .end local v12    # "whence":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/css/StyleOrigin;>;"
    .end local v13    # "property":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/Object;
    .end local v15    # "isFontProperty":Z
    .end local v16    # "isRelative":Z
    .end local v17    # "fontForFontRelativeSizes":Ljavafx/scene/text/Font;
    .end local v18    # "cssMetaDataConverter":Ljavafx/css/StyleConverter;
    :catch_0
    move-exception v21

    move-object/from16 v12, v21

    .line 1478
    .local v12, "cce":Ljava/lang/ClassCastException;
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/CascadingStyle;->getStyle()Lcom/sun/javafx/css/Style;

    move-result-object v24

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    invoke-direct/range {v21 .. v26}, Ljavafx/scene/CssStyleHelper;->formatUnresolvedLookupMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/lang/ClassCastException;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 1479
    .local v13, "msg":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 1480
    .local v14, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v14, v22

    if-eqz v21, :cond_e

    .line 1481
    new-instance v21, Lcom/sun/javafx/css/CssError$PropertySetError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/CssError$PropertySetError;-><init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object/from16 v15, v21

    .line 1482
    .local v15, "error":Lcom/sun/javafx/css/CssError;
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 1484
    .end local v15    # "error":Lcom/sun/javafx/css/CssError;
    :cond_e
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v22, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1485
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1486
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "node = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1487
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "cssMetaData = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1488
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "styles = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-static/range {v23 .. v24}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;)Ljava/util/List;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1490
    :cond_f
    sget-object v21, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v21

    goto/16 :goto_4

    .line 1491
    .end local v12    # "cce":Ljava/lang/ClassCastException;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :catch_1
    move-exception v21

    move-object/from16 v12, v21

    .line 1492
    .local v12, "iae":Ljava/lang/IllegalArgumentException;
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/CascadingStyle;->getStyle()Lcom/sun/javafx/css/Style;

    move-result-object v24

    move-object/from16 v25, v12

    invoke-direct/range {v21 .. v25}, Ljavafx/scene/CssStyleHelper;->formatExceptionMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 1493
    .restart local v13    # "msg":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 1494
    .restart local v14    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v14, v22

    if-eqz v21, :cond_10

    .line 1495
    new-instance v21, Lcom/sun/javafx/css/CssError$PropertySetError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/CssError$PropertySetError;-><init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object/from16 v15, v21

    .line 1496
    .restart local v15    # "error":Lcom/sun/javafx/css/CssError;
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 1498
    .end local v15    # "error":Lcom/sun/javafx/css/CssError;
    :cond_10
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v22, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1499
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1500
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    const-string v22, "caught: "

    move-object/from16 v23, v12

    invoke-virtual/range {v21 .. v23}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "styleable = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1502
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "node = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1504
    :cond_11
    sget-object v21, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v21

    goto/16 :goto_4

    .line 1505
    .end local v12    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :catch_2
    move-exception v21

    move-object/from16 v12, v21

    .line 1506
    .local v12, "npe":Ljava/lang/NullPointerException;
    move-object/from16 v21, v2

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/CascadingStyle;->getStyle()Lcom/sun/javafx/css/Style;

    move-result-object v24

    move-object/from16 v25, v12

    invoke-direct/range {v21 .. v25}, Ljavafx/scene/CssStyleHelper;->formatExceptionMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v13, v21

    .line 1507
    .restart local v13    # "msg":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 1508
    .restart local v14    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v21

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v14, v22

    if-eqz v21, :cond_12

    .line 1509
    new-instance v21, Lcom/sun/javafx/css/CssError$PropertySetError;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/CssError$PropertySetError;-><init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object/from16 v15, v21

    .line 1510
    .restart local v15    # "error":Lcom/sun/javafx/css/CssError;
    move-object/from16 v21, v14

    move-object/from16 v22, v15

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 1512
    .end local v15    # "error":Lcom/sun/javafx/css/CssError;
    :cond_12
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v22, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1513
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v22, v13

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1514
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    const-string v22, "caught: "

    move-object/from16 v23, v12

    invoke-virtual/range {v21 .. v23}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1515
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "styleable = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1516
    sget-object v21, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "node = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1518
    :cond_13
    sget-object v21, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v21

    goto/16 :goto_4

    .line 1523
    .end local v11    # "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v12    # "npe":Ljava/lang/NullPointerException;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :cond_14
    new-instance v21, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    const/16 v23, 0x0

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v2, v21

    goto/16 :goto_4
.end method

.method private static canReuseStyleHelper(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;)Z
    .locals 12

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-nez v9, :cond_1

    .line 267
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 334
    .end local v0    # "node":Ljavafx/scene/Node;
    :goto_0
    return v0

    .line 271
    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_1
    move-object v9, v1

    if-nez v9, :cond_2

    .line 272
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 275
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v9

    move-object v2, v9

    .line 279
    .local v2, "currentMap":Lcom/sun/javafx/css/StyleMap;
    move-object v9, v2

    move-object v10, v1

    if-eq v9, v10, :cond_3

    .line 280
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 285
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-nez v9, :cond_4

    .line 286
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 296
    :cond_4
    const/4 v9, 0x0

    move-object v3, v9

    .line 297
    .local v3, "parentHelper":Ljavafx/scene/CssStyleHelper;
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/Node;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v9

    move-object v4, v9

    .line 300
    .local v4, "parent":Ljavafx/css/Styleable;
    move-object v9, v4

    if-nez v9, :cond_6

    .line 301
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    .line 309
    :cond_5
    move-object v9, v4

    invoke-interface {v9}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v9

    move-object v4, v9

    .line 304
    :cond_6
    move-object v9, v4

    if-eqz v9, :cond_7

    .line 305
    move-object v9, v4

    instance-of v9, v9, Ljavafx/scene/Node;

    if-eqz v9, :cond_5

    .line 306
    move-object v9, v4

    check-cast v9, Ljavafx/scene/Node;

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v3, v9

    .line 307
    move-object v9, v3

    if-eqz v9, :cond_5

    .line 312
    :cond_7
    move-object v9, v3

    if-eqz v9, :cond_a

    move-object v9, v3

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-eqz v9, :cond_a

    .line 314
    move-object v9, v3

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v9}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$400(Ljavafx/scene/CssStyleHelper$CacheContainer;)Lcom/sun/javafx/css/StyleCache$Key;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/css/StyleCache$Key;->getStyleMapIds()[I

    move-result-object v9

    move-object v5, v9

    .line 315
    .local v5, "parentIds":[I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v9}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$400(Ljavafx/scene/CssStyleHelper$CacheContainer;)Lcom/sun/javafx/css/StyleCache$Key;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/css/StyleCache$Key;->getStyleMapIds()[I

    move-result-object v9

    move-object v6, v9

    .line 317
    .local v6, "nodeIds":[I
    move-object v9, v5

    array-length v9, v9

    move-object v10, v6

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_a

    .line 319
    const/4 v9, 0x1

    move v7, v9

    .line 322
    .local v7, "isSame":Z
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    move-object v10, v5

    array-length v10, v10

    if-ge v9, v10, :cond_8

    .line 323
    move-object v9, v6

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    move-object v10, v5

    move v11, v8

    aget v10, v10, v11

    if-eq v9, v10, :cond_9

    .line 324
    const/4 v9, 0x0

    move v7, v9

    .line 329
    :cond_8
    move v9, v7

    move v0, v9

    goto/16 :goto_0

    .line 322
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 334
    .end local v5    # "parentIds":[I
    .end local v6    # "nodeIds":[I
    .end local v7    # "isSame":Z
    .end local v8    # "i":I
    :cond_a
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0
.end method

.method static createStyleHelper(Ljavafx/scene/Node;)Ljavafx/scene/CssStyleHelper;
    .locals 18

    .prologue
    .line 92
    move-object/from16 v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v10, v0

    move-object v1, v10

    .line 93
    .local v1, "parent":Ljavafx/css/Styleable;
    const/4 v10, 0x0

    move v2, v10

    .line 94
    .local v2, "depth":I
    :goto_0
    move-object v10, v1

    if-eqz v10, :cond_0

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    move-object v10, v1

    invoke-interface {v10}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v10

    move-object v1, v10

    goto :goto_0

    .line 108
    :cond_0
    move v10, v2

    new-array v10, v10, [Lcom/sun/javafx/css/PseudoClassState;

    move-object v3, v10

    .line 111
    .local v3, "triggerStates":[Lcom/sun/javafx/css/PseudoClassState;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v10

    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/javafx/css/StyleManager;->findMatchingStyles(Ljavafx/scene/Node;Ljavafx/scene/SubScene;[Ljava/util/Set;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v10

    move-object v4, v10

    .line 116
    .local v4, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object v10, v0

    move-object v11, v4

    invoke-static {v10, v11}, Ljavafx/scene/CssStyleHelper;->canReuseStyleHelper(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 128
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v10, v10, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v11, v0

    invoke-direct {v10, v11}, Ljavafx/scene/CssStyleHelper;->isUserSetFont(Ljavafx/css/Styleable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 129
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v10, v10, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v10}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 131
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v10, v10, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$102(Ljavafx/scene/CssStyleHelper$CacheContainer;Z)Z

    move-result v10

    .line 132
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v10, v10, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/PseudoClassState;->addAll(Ljava/util/Collection;)Z

    move-result v10

    .line 133
    move-object v10, v0

    move v11, v2

    move-object v12, v3

    invoke-static {v10, v11, v12}, Ljavafx/scene/CssStyleHelper;->updateParentTriggerStates(Ljavafx/css/Styleable;I[Lcom/sun/javafx/css/PseudoClassState;)V

    .line 134
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v0, v10

    .line 183
    .end local v0    # "node":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 138
    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_2
    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/css/StyleMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 140
    :cond_3
    const/4 v10, 0x0

    move v5, v10

    .line 142
    .local v5, "mightInherit":Z
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/Node;->getCssMetaData()Ljava/util/List;

    move-result-object v10

    move-object v6, v10

    .line 144
    .local v6, "props":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v10, v6

    if-eqz v10, :cond_6

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    move v7, v10

    .line 145
    .local v7, "pMax":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "p":I
    :goto_3
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_4

    .line 147
    move-object v10, v6

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/css/CssMetaData;

    move-object v9, v10

    .line 148
    .local v9, "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/css/CssMetaData;->isInherits()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 149
    const/4 v10, 0x1

    move v5, v10

    .line 154
    .end local v9    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_4
    move v10, v5

    if-nez v10, :cond_8

    .line 158
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v10, :cond_5

    .line 159
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v11, v0

    invoke-direct {v10, v11}, Ljavafx/scene/CssStyleHelper;->resetToInitialValues(Ljavafx/css/Styleable;)V

    .line 165
    :cond_5
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1

    .line 144
    .end local v7    # "pMax":I
    .end local v8    # "p":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 145
    .restart local v7    # "pMax":I
    .restart local v8    # "p":I
    .restart local v9    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 170
    .end local v5    # "mightInherit":Z
    .end local v6    # "props":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    .end local v7    # "pMax":I
    .end local v8    # "p":I
    .end local v9    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_8
    new-instance v10, Ljavafx/scene/CssStyleHelper;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljavafx/scene/CssStyleHelper;-><init>()V

    move-object v5, v10

    .line 171
    .local v5, "helper":Ljavafx/scene/CssStyleHelper;
    move-object v10, v5

    iget-object v10, v10, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    move-object v11, v3

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/PseudoClassState;->addAll(Ljava/util/Collection;)Z

    move-result v10

    .line 173
    move-object v10, v0

    move v11, v2

    move-object v12, v3

    invoke-static {v10, v11, v12}, Ljavafx/scene/CssStyleHelper;->updateParentTriggerStates(Ljavafx/css/Styleable;I[Lcom/sun/javafx/css/PseudoClassState;)V

    .line 175
    move-object v10, v5

    new-instance v11, Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v0

    move-object v14, v4

    move v15, v2

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Ljavafx/scene/CssStyleHelper$CacheContainer;-><init>(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;ILjavafx/scene/CssStyleHelper$1;)V

    iput-object v11, v10, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    .line 179
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v10, :cond_9

    .line 180
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v11, v0

    invoke-direct {v10, v11}, Ljavafx/scene/CssStyleHelper;->resetToInitialValues(Ljavafx/css/Styleable;)V

    .line 183
    :cond_9
    move-object v10, v5

    move-object v0, v10

    goto/16 :goto_1
.end method

.method private formatExceptionMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 1332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object v3, p3

    .local v3, "style":Lcom/sun/javafx/css/Style;
    move-object/from16 v4, p4

    .local v4, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v9

    .line 1333
    .local v5, "sbuf":Ljava/lang/StringBuilder;
    move-object v9, v5

    const-string v10, "Caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    .line 1334
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1336
    move-object v9, v2

    if-eqz v9, :cond_0

    .line 1337
    move-object v9, v5

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while calculating value for \'"

    .line 1338
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    .line 1339
    invoke-virtual {v10}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    .line 1340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1343
    :cond_0
    move-object v9, v3

    if-eqz v9, :cond_1

    .line 1345
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v9

    move-object v6, v9

    .line 1346
    .local v6, "rule":Lcom/sun/javafx/css/Rule;
    move-object v9, v6

    if-eqz v9, :cond_2

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/javafx/css/Rule;->getStylesheet()Lcom/sun/javafx/css/Stylesheet;

    move-result-object v9

    :goto_0
    move-object v7, v9

    .line 1347
    .local v7, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v7

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v8, v9

    .line 1349
    .local v8, "url":Ljava/lang/String;
    move-object v9, v8

    if-eqz v9, :cond_4

    .line 1350
    move-object v9, v5

    const-string v10, " from rule \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    .line 1351
    invoke-virtual {v10}, Lcom/sun/javafx/css/Style;->getSelector()Lcom/sun/javafx/css/Selector;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in stylesheet "

    .line 1352
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1363
    .end local v6    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v7    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1
    :goto_2
    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    return-object v0

    .line 1346
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .restart local v6    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 1347
    .restart local v7    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 1353
    .restart local v8    # "url":Ljava/lang/String;
    :cond_4
    move-object v9, v1

    if-eqz v9, :cond_5

    move-object v9, v7

    if-eqz v9, :cond_5

    sget-object v9, Ljavafx/css/StyleOrigin;->INLINE:Ljavafx/css/StyleOrigin;

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/Stylesheet;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 1354
    move-object v9, v5

    const-string v10, " from inline style on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    .line 1355
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_2

    .line 1357
    :cond_5
    move-object v9, v5

    const-string v10, " from style \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    .line 1358
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    .line 1359
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_2
.end method

.method private formatUnresolvedLookupMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/lang/ClassCastException;)Ljava/lang/String;
    .locals 14

    .prologue
    .line 1296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object/from16 v3, p3

    .local v3, "style":Lcom/sun/javafx/css/Style;
    move-object/from16 v4, p4

    .local v4, "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v5, p5

    .local v5, "cce":Ljava/lang/ClassCastException;
    move-object v11, v4

    if-eqz v11, :cond_1

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/javafx/css/ParsedValueImpl;->isContainsLookups()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v0

    move-object v12, v4

    invoke-direct {v11, v12}, Ljavafx/scene/CssStyleHelper;->getUnresolvedLookup(Lcom/sun/javafx/css/ParsedValueImpl;)Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object v6, v11

    .line 1298
    .local v6, "missingLookup":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v11

    .line 1299
    .local v7, "sbuf":Ljava/lang/StringBuilder;
    move-object v11, v6

    if-eqz v11, :cond_2

    .line 1300
    move-object v11, v7

    const-string v12, "Could not resolve \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v6

    .line 1301
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    .line 1302
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while resolving lookups for \'"

    .line 1303
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    .line 1304
    invoke-virtual {v12}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    .line 1305
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1315
    :goto_1
    move-object v11, v3

    if-eqz v11, :cond_3

    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/css/Style;->getDeclaration()Lcom/sun/javafx/css/Declaration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/css/Declaration;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v11

    :goto_2
    move-object v8, v11

    .line 1316
    .local v8, "rule":Lcom/sun/javafx/css/Rule;
    move-object v11, v8

    if-eqz v11, :cond_4

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/css/Rule;->getStylesheet()Lcom/sun/javafx/css/Stylesheet;

    move-result-object v11

    :goto_3
    move-object v9, v11

    .line 1317
    .local v9, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v11, v9

    if-eqz v11, :cond_5

    move-object v11, v9

    invoke-virtual {v11}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v11

    :goto_4
    move-object v10, v11

    .line 1318
    .local v10, "url":Ljava/lang/String;
    move-object v11, v10

    if-eqz v11, :cond_6

    .line 1319
    move-object v11, v7

    const-string v12, " from rule \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    .line 1320
    invoke-virtual {v12}, Lcom/sun/javafx/css/Style;->getSelector()Lcom/sun/javafx/css/Selector;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' in stylesheet "

    .line 1321
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1327
    :cond_0
    :goto_5
    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    return-object v0

    .line 1296
    .end local v6    # "missingLookup":Ljava/lang/String;
    .end local v7    # "sbuf":Ljava/lang/StringBuilder;
    .end local v8    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v9    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .end local v10    # "url":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1307
    .restart local v6    # "missingLookup":Ljava/lang/String;
    .restart local v7    # "sbuf":Ljava/lang/StringBuilder;
    :cond_2
    move-object v11, v7

    const-string v12, "Caught \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    .line 1308
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    .line 1309
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while converting value for \'"

    .line 1310
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    .line 1311
    invoke-virtual {v12}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    .line 1312
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    goto :goto_1

    .line 1315
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 1316
    .restart local v8    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 1317
    .restart local v9    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 1322
    .restart local v10    # "url":Ljava/lang/String;
    :cond_6
    move-object v11, v9

    if-eqz v11, :cond_0

    sget-object v11, Ljavafx/css/StyleOrigin;->INLINE:Ljavafx/css/StyleOrigin;

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/css/Stylesheet;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v12

    if-ne v11, v12, :cond_0

    .line 1323
    move-object v11, v7

    const-string v12, " from inline style on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    .line 1324
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    goto :goto_5
.end method

.method private getCachedFont(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 14

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v8, v1

    instance-of v8, v8, Ljavafx/scene/Node;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    .line 1577
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 1545
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .line 1547
    .local v2, "cachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object v8, v1

    check-cast v8, Ljavafx/scene/Node;

    move-object v3, v8

    .line 1549
    .local v3, "parent":Ljavafx/scene/Node;
    move-object v8, v3

    iget-object v8, v8, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v4, v8

    .line 1554
    .local v4, "parentHelper":Ljavafx/scene/CssStyleHelper;
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    iget-object v8, v8, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-nez v8, :cond_3

    .line 1556
    :cond_1
    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/Node;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavafx/scene/CssStyleHelper;->getCachedFont(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v8

    move-object v2, v8

    .line 1577
    :cond_2
    :goto_1
    move-object v8, v2

    sget-object v9, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    if-eq v8, v9, :cond_5

    move-object v8, v2

    :goto_2
    move-object v0, v8

    goto :goto_0

    .line 1561
    :cond_3
    move-object v8, v4

    iget-object v8, v8, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object v5, v8

    .line 1562
    .local v5, "parentCacheContainer":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v8, v5

    if-eqz v8, :cond_4

    move-object v8, v5

    .line 1563
    invoke-static {v8}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v8, v5

    .line 1564
    invoke-static {v8}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1566
    move-object v8, v4

    move-object v9, v3

    invoke-direct {v8, v9}, Ljavafx/scene/CssStyleHelper;->getTransitionStates(Ljavafx/scene/Node;)[Ljava/util/Set;

    move-result-object v8

    move-object v6, v8

    .line 1567
    .local v6, "transitionStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    new-instance v8, Lcom/sun/javafx/css/StyleCacheEntry$Key;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/StyleCacheEntry$Key;-><init>([Ljava/util/Set;Ljavafx/scene/text/Font;)V

    move-object v7, v8

    .line 1568
    .local v7, "parentCacheEntryKey":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v8, v5

    invoke-static {v8}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v8

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/CalculatedValue;

    move-object v2, v8

    .line 1571
    .end local v6    # "transitionStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v7    # "parentCacheEntryKey":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    :cond_4
    move-object v8, v2

    if-nez v8, :cond_2

    .line 1572
    move-object v8, v4

    move-object v9, v3

    invoke-direct {v8, v9}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v8

    move-object v6, v8

    .line 1573
    .local v6, "smap":Lcom/sun/javafx/css/StyleMap;
    move-object v8, v4

    move-object v9, v3

    const-string v10, "-fx-font"

    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/scene/CssStyleHelper;->lookupFont(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v8

    move-object v2, v8

    goto :goto_1

    .line 1577
    .end local v5    # "parentCacheContainer":Ljavafx/scene/CssStyleHelper$CacheContainer;
    .end local v6    # "smap":Lcom/sun/javafx/css/StyleMap;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private getInheritedStyle(Ljavafx/css/Styleable;Ljava/lang/String;)Lcom/sun/javafx/css/CascadingStyle;
    .locals 14

    .prologue
    .line 1070
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object v9, v1

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-interface {v9}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v9

    :goto_0
    move-object v3, v9

    .line 1072
    .local v3, "parent":Ljavafx/css/Styleable;
    :goto_1
    move-object v9, v3

    if-eqz v9, :cond_5

    .line 1074
    move-object v9, v3

    instance-of v9, v9, Ljavafx/scene/Node;

    if-eqz v9, :cond_1

    move-object v9, v3

    check-cast v9, Ljavafx/scene/Node;

    iget-object v9, v9, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_2
    move-object v4, v9

    .line 1075
    .local v4, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object v9, v4

    if-eqz v9, :cond_4

    .line 1077
    move-object v9, v4

    move-object v10, v3

    invoke-direct {v9, v10}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v9

    move-object v5, v9

    .line 1078
    .local v5, "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    move-object v9, v3

    check-cast v9, Ljavafx/scene/Node;

    iget-object v9, v9, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object v6, v9

    .line 1079
    .local v6, "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v9, v4

    move-object v10, v3

    move-object v11, v2

    move-object v12, v5

    move-object v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v9

    move-object v7, v9

    .line 1081
    .local v7, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object v9, v7

    if-eqz v9, :cond_3

    .line 1083
    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v9

    move-object v8, v9

    .line 1085
    .local v8, "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    const-string v9, "inherit"

    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1086
    move-object v9, v0

    move-object v10, v3

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Ljavafx/scene/CssStyleHelper;->getInheritedStyle(Ljavafx/css/Styleable;Ljava/lang/String;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v9

    move-object v0, v9

    .line 1098
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .end local v4    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .end local v5    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v6    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v7    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v8    # "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :goto_3
    return-object v0

    .line 1070
    .end local v3    # "parent":Ljavafx/css/Styleable;
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1074
    .restart local v3    # "parent":Ljavafx/css/Styleable;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 1088
    .restart local v4    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .restart local v5    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .restart local v6    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .restart local v7    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .restart local v8    # "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_2
    move-object v9, v7

    move-object v0, v9

    goto :goto_3

    .line 1091
    .end local v8    # "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_3

    .line 1094
    .end local v5    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v6    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v7    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    :cond_4
    move-object v9, v3

    invoke-interface {v9}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v9

    move-object v3, v9

    .line 1096
    goto :goto_1

    .line 1098
    .end local v4    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    :cond_5
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_3
.end method

.method private getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Lcom/sun/javafx/css/ParsedValueImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/CascadingStyle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2131
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/css/Styleable;
    move-object/from16 v4, p2

    .local v4, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v5, p3

    .local v5, "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move/from16 v6, p4

    .local v6, "matchState":Z
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;->isLookup()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 2133
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 2135
    .local v7, "value":Ljava/lang/Object;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2137
    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    move-object/from16 v8, v17

    .line 2139
    .local v8, "property":Ljava/lang/String;
    move-object/from16 v17, v3

    move-object/from16 v9, v17

    .line 2142
    .local v9, "parent":Ljavafx/css/Styleable;
    :cond_0
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Ljavafx/scene/Node;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, v9

    check-cast v17, Ljavafx/scene/Node;

    :goto_0
    move-object/from16 v10, v17

    .line 2143
    .local v10, "_parent":Ljavafx/scene/Node;
    move-object/from16 v17, v10

    if-eqz v17, :cond_4

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object/from16 v17, v0

    :goto_1
    move-object/from16 v11, v17

    .line 2146
    .local v11, "helper":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v17, v11

    if-eqz v17, :cond_1

    .line 2148
    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v18}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v17

    move-object/from16 v12, v17

    .line 2149
    .local v12, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v17, v12

    if-eqz v17, :cond_1

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/StyleMap;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2177
    .end local v12    # "styleMap":Lcom/sun/javafx/css/StyleMap;
    :cond_1
    move-object/from16 v17, v9

    invoke-interface/range {v17 .. v17}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v9, v18

    if-nez v17, :cond_0

    .line 2183
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "property":Ljava/lang/String;
    .end local v9    # "parent":Ljavafx/css/Styleable;
    .end local v10    # "_parent":Ljavafx/scene/Node;
    .end local v11    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_2
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;->isContainsLookups()Z

    move-result v17

    if-nez v17, :cond_8

    .line 2184
    .line 2207
    :goto_2
    return-void

    .line 2142
    .restart local v7    # "value":Ljava/lang/Object;
    .restart local v8    # "property":Ljava/lang/String;
    .restart local v9    # "parent":Ljavafx/css/Styleable;
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 2143
    .restart local v10    # "_parent":Ljavafx/scene/Node;
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 2151
    .restart local v11    # "helper":Ljavafx/scene/CssStyleHelper;
    .restart local v12    # "styleMap":Lcom/sun/javafx/css/StyleMap;
    :cond_5
    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v13, v17

    .line 2153
    .local v13, "start":I
    move/from16 v17, v6

    if-eqz v17, :cond_7

    .line 2154
    move-object/from16 v17, v11

    move-object/from16 v18, v10

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v21, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Ljavafx/scene/CssStyleHelper;->resolveRef(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v17

    move-object/from16 v14, v17

    .line 2155
    .local v14, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v17, v14

    if-eqz v17, :cond_6

    .line 2156
    move-object/from16 v17, v5

    move-object/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 2158
    .line 2169
    .end local v14    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    :cond_6
    :goto_3
    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v14, v17

    .line 2171
    .local v14, "end":I
    move/from16 v17, v13

    move/from16 v15, v17

    .local v15, "index":I
    :goto_4
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 2172
    move-object/from16 v17, v5

    move/from16 v18, v15

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/javafx/css/CascadingStyle;

    move-object/from16 v16, v17

    .line 2173
    .local v16, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v19, v16

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v19

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v21}, Ljavafx/scene/CssStyleHelper;->getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V

    .line 2171
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2159
    .end local v14    # "end":I
    .end local v15    # "index":I
    .end local v16    # "style":Lcom/sun/javafx/css/CascadingStyle;
    :cond_7
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/StyleMap;->getCascadingStyles()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v14, v17

    .line 2161
    .local v14, "smap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;>;"
    move-object/from16 v17, v14

    move-object/from16 v18, v8

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    move-object/from16 v15, v17

    .line 2163
    .local v15, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move-object/from16 v17, v15

    if-eqz v17, :cond_6

    .line 2164
    move-object/from16 v17, v5

    move-object/from16 v18, v15

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v17

    goto :goto_3

    .line 2187
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "property":Ljava/lang/String;
    .end local v9    # "parent":Ljavafx/css/Styleable;
    .end local v10    # "_parent":Ljavafx/scene/Node;
    .end local v11    # "helper":Ljavafx/scene/CssStyleHelper;
    .end local v12    # "styleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v13    # "start":I
    .end local v14    # "smap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;>;"
    .end local v15    # "styles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    :cond_8
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    .line 2188
    .local v7, "val":Ljava/lang/Object;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 2190
    move-object/from16 v17, v7

    check-cast v17, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v17, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v8, v17

    .line 2191
    .local v8, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "l":I
    :goto_5
    move/from16 v17, v9

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 2192
    const/16 v17, 0x0

    move/from16 v10, v17

    .local v10, "ll":I
    :goto_6
    move/from16 v17, v10

    move-object/from16 v18, v8

    move/from16 v19, v9

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 2193
    move-object/from16 v17, v8

    move/from16 v18, v9

    aget-object v17, v17, v18

    move/from16 v18, v10

    aget-object v17, v17, v18

    if-nez v17, :cond_9

    .line 2192
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2194
    :cond_9
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move/from16 v20, v9

    aget-object v19, v19, v20

    move/from16 v20, v10

    aget-object v19, v19, v20

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v21}, Ljavafx/scene/CssStyleHelper;->getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V

    goto :goto_7

    .line 2191
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2198
    .line 2207
    .end local v8    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v9    # "l":I
    .end local v10    # "ll":I
    :cond_b
    goto/16 :goto_2

    .line 2198
    :cond_c
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, [Lcom/sun/javafx/css/ParsedValueImpl;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 2200
    move-object/from16 v17, v7

    check-cast v17, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v17, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v8, v17

    .line 2201
    .local v8, "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/16 v17, 0x0

    move/from16 v9, v17

    .restart local v9    # "l":I
    :goto_8
    move/from16 v17, v9

    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 2202
    move-object/from16 v17, v8

    move/from16 v18, v9

    aget-object v17, v17, v18

    if-nez v17, :cond_d

    .line 2201
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 2203
    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move/from16 v20, v9

    aget-object v19, v19, v20

    move-object/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v21}, Ljavafx/scene/CssStyleHelper;->getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V

    goto :goto_9
.end method

.method static getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2018
    move-object v0, p0

    .local v0, "styleable":Ljavafx/css/Styleable;
    move-object v1, p1

    .local v1, "styleableProperty":Ljavafx/css/CssMetaData;
    move-object v4, v0

    instance-of v4, v4, Ljavafx/scene/Node;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    .line 2027
    .end local v0    # "styleable":Ljavafx/css/Styleable;
    :goto_0
    return-object v0

    .line 2020
    .restart local v0    # "styleable":Ljavafx/css/Styleable;
    :cond_0
    move-object v4, v0

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 2021
    .local v2, "node":Ljavafx/scene/Node;
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v4, :cond_1

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_1
    move-object v3, v4

    .line 2023
    .local v3, "helper":Ljavafx/scene/CssStyleHelper;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 2024
    move-object v4, v3

    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Z)Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 2021
    .end local v3    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_1
    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/CssStyleHelper;->createStyleHelper(Ljavafx/scene/Node;)Ljavafx/scene/CssStyleHelper;

    move-result-object v4

    goto :goto_1

    .line 2027
    .restart local v3    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2056
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "node":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "styleableProperty":Ljavafx/css/CssMetaData;
    move/from16 v3, p3

    .local v3, "matchState":Z
    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v10

    .line 2058
    .local v4, "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v4

    move v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Ljava/util/List;Z)V

    .line 2060
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/css/CssMetaData;->getSubProperties()Ljava/util/List;

    move-result-object v10

    move-object v5, v10

    .line 2061
    .local v5, "subProperties":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v10, v5

    if-eqz v10, :cond_0

    .line 2062
    const/4 v10, 0x0

    move v6, v10

    .local v6, "n":I
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .local v7, "nMax":I
    :goto_0
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 2063
    move-object v10, v5

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/css/CssMetaData;

    move-object v8, v10

    .line 2064
    .local v8, "subProperty":Ljavafx/css/CssMetaData;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v8

    move-object v13, v4

    move v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Ljava/util/List;Z)V

    .line 2062
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2068
    .end local v6    # "n":I
    .end local v7    # "nMax":I
    .end local v8    # "subProperty":Ljavafx/css/CssMetaData;
    :cond_0
    move-object v10, v4

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2070
    new-instance v10, Ljava/util/ArrayList;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v10

    .line 2071
    .local v6, "matchingStyles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Style;>;"
    const/4 v10, 0x0

    move v7, v10

    .local v7, "n":I
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v8, v10

    .local v8, "nMax":I
    :goto_1
    move v10, v7

    move v11, v8

    if-ge v10, v11, :cond_2

    .line 2072
    move-object v10, v4

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/CascadingStyle;

    invoke-virtual {v10}, Lcom/sun/javafx/css/CascadingStyle;->getStyle()Lcom/sun/javafx/css/Style;

    move-result-object v10

    move-object v9, v10

    .line 2073
    .local v9, "style":Lcom/sun/javafx/css/Style;
    move-object v10, v6

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v6

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 2071
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2076
    .end local v9    # "style":Lcom/sun/javafx/css/Style;
    :cond_2
    move-object v10, v6

    move-object v0, v10

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    return-object v0
.end method

.method static getMatchingStyles(Ljava/util/Map;Ljavafx/scene/Node;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;",
            "Ljavafx/scene/Node;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2033
    move-object v0, p0

    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v7, :cond_2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_0
    move-object v2, v7

    .line 2034
    .local v2, "helper":Ljavafx/scene/CssStyleHelper;
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 2035
    move-object v7, v0

    if-nez v7, :cond_0

    new-instance v7, Ljava/util/HashMap;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v0, v7

    .line 2036
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getCssMetaData()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/css/CssMetaData;

    move-object v4, v7

    .line 2037
    .local v4, "metaData":Ljavafx/css/CssMetaData;
    move-object v7, v2

    move-object v8, v1

    move-object v9, v4

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Z)Ljava/util/List;

    move-result-object v7

    move-object v5, v7

    .line 2038
    .local v5, "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Style;>;"
    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2039
    move-object v7, v4

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v7

    move-object v6, v7

    .line 2040
    .local v6, "prop":Ljavafx/css/StyleableProperty;
    move-object v7, v0

    move-object v8, v6

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2042
    .end local v6    # "prop":Ljavafx/css/StyleableProperty;
    :cond_1
    goto :goto_1

    .line 2033
    .end local v2    # "helper":Ljavafx/scene/CssStyleHelper;
    .end local v4    # "metaData":Ljavafx/css/CssMetaData;
    .end local v5    # "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Style;>;"
    :cond_2
    move-object v7, v1

    invoke-static {v7}, Ljavafx/scene/CssStyleHelper;->createStyleHelper(Ljavafx/scene/Node;)Ljavafx/scene/CssStyleHelper;

    move-result-object v7

    goto :goto_0

    .line 2045
    .restart local v2    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_3
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_4

    .line 2046
    move-object v7, v1

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_2
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 2047
    .local v4, "child":Ljavafx/scene/Node;
    move-object v7, v0

    move-object v8, v4

    invoke-static {v7, v8}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljava/util/Map;Ljavafx/scene/Node;)Ljava/util/Map;

    move-result-object v7

    move-object v0, v7

    .line 2048
    goto :goto_2

    .line 2051
    .end local v4    # "child":Ljavafx/scene/Node;
    :cond_4
    move-object v7, v0

    move-object v0, v7

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    return-object v0
.end method

.method private getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Ljava/util/List;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/CascadingStyle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2081
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v2, p1

    .local v2, "node":Ljavafx/css/Styleable;
    move-object/from16 v3, p2

    .local v3, "styleableProperty":Ljavafx/css/CssMetaData;
    move-object/from16 v4, p3

    .local v4, "styleList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move/from16 v5, p4

    .local v5, "matchState":Z
    move-object v15, v2

    if-eqz v15, :cond_6

    .line 2083
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 2084
    .local v6, "property":Ljava/lang/String;
    move-object v15, v2

    instance-of v15, v15, Ljavafx/scene/Node;

    if-eqz v15, :cond_0

    move-object v15, v2

    check-cast v15, Ljavafx/scene/Node;

    :goto_0
    move-object v7, v15

    .line 2085
    .local v7, "_node":Ljavafx/scene/Node;
    move-object v15, v1

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v15

    move-object v8, v15

    .line 2086
    .local v8, "smap":Lcom/sun/javafx/css/StyleMap;
    move-object v15, v8

    if-nez v15, :cond_1

    .line 2126
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "_node":Ljavafx/scene/Node;
    .end local v8    # "smap":Lcom/sun/javafx/css/StyleMap;
    :goto_1
    return-void

    .line 2084
    .restart local v6    # "property":Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 2088
    .restart local v7    # "_node":Ljavafx/scene/Node;
    .restart local v8    # "smap":Lcom/sun/javafx/css/StyleMap;
    :cond_1
    move v15, v5

    if-eqz v15, :cond_4

    .line 2089
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    iget-object v0, v0, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v15

    move-object v9, v15

    .line 2090
    .local v9, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object v15, v9

    if-eqz v15, :cond_2

    .line 2091
    move-object v15, v4

    move-object/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    .line 2092
    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v10, v15

    .line 2093
    .local v10, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v15 .. v19}, Ljavafx/scene/CssStyleHelper;->getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V

    .line 2095
    .line 2111
    .end local v9    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v10    # "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_2
    move-object v15, v3

    invoke-virtual {v15}, Ljavafx/css/CssMetaData;->isInherits()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2112
    move-object v15, v2

    invoke-interface {v15}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v15

    move-object v9, v15

    .line 2113
    .local v9, "parent":Ljavafx/css/Styleable;
    :goto_2
    move-object v15, v9

    if-eqz v15, :cond_6

    .line 2114
    move-object v15, v9

    instance-of v15, v15, Ljavafx/scene/Node;

    if-eqz v15, :cond_5

    move-object v15, v9

    check-cast v15, Ljavafx/scene/Node;

    iget-object v15, v15, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_3
    move-object v10, v15

    .line 2117
    .local v10, "parentHelper":Ljavafx/scene/CssStyleHelper;
    move-object v15, v10

    if-eqz v15, :cond_3

    .line 2118
    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v15 .. v19}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Ljava/util/List;Z)V

    .line 2120
    :cond_3
    move-object v15, v9

    invoke-interface {v15}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v15

    move-object v9, v15

    .line 2121
    goto :goto_2

    .line 2097
    .end local v9    # "parent":Ljavafx/css/Styleable;
    .end local v10    # "parentHelper":Ljavafx/scene/CssStyleHelper;
    :cond_4
    move-object v15, v8

    invoke-virtual {v15}, Lcom/sun/javafx/css/StyleMap;->getCascadingStyles()Ljava/util/Map;

    move-result-object v15

    move-object v9, v15

    .line 2099
    .local v9, "cascadingStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;>;"
    move-object v15, v9

    move-object/from16 v16, v6

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    move-object v10, v15

    .line 2101
    .local v10, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move-object v15, v10

    if-eqz v15, :cond_2

    .line 2102
    move-object v15, v4

    move-object/from16 v16, v10

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v15

    .line 2103
    const/4 v15, 0x0

    move v11, v15

    .local v11, "n":I
    move-object v15, v10

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move v12, v15

    .local v12, "nMax":I
    :goto_4
    move v15, v11

    move/from16 v16, v12

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 2104
    move-object v15, v10

    move/from16 v16, v11

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sun/javafx/css/CascadingStyle;

    move-object v13, v15

    .line 2105
    .local v13, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object v15, v13

    invoke-virtual {v15}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object v14, v15

    .line 2106
    .local v14, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v14

    move-object/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v15 .. v19}, Ljavafx/scene/CssStyleHelper;->getMatchingLookupStyles(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Ljava/util/List;Z)V

    .line 2103
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 2114
    .end local v10    # "styles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    .end local v11    # "n":I
    .end local v12    # "nMax":I
    .end local v13    # "style":Lcom/sun/javafx/css/CascadingStyle;
    .end local v14    # "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    .local v9, "parent":Ljavafx/css/Styleable;
    :cond_5
    const/4 v15, 0x0

    goto :goto_3

    .line 2126
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "_node":Ljavafx/scene/Node;
    .end local v8    # "smap":Lcom/sun/javafx/css/StyleMap;
    .end local v9    # "parent":Ljavafx/css/Styleable;
    :cond_6
    goto/16 :goto_1
.end method

.method private getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;)",
            "Lcom/sun/javafx/css/CascadingStyle;"
        }
    .end annotation

    .prologue
    .line 844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v4, p4

    .local v4, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/css/StyleMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    move-object v0, v12

    .line 872
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 846
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_1
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/css/StyleMap;->getCascadingStyles()Ljava/util/Map;

    move-result-object v12

    move-object v5, v12

    .line 847
    .local v5, "cascadingStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;>;"
    move-object v12, v5

    if-eqz v12, :cond_2

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 850
    :cond_3
    move-object v12, v5

    move-object v13, v2

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object v6, v12

    .line 853
    .local v6, "styles":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CascadingStyle;>;"
    move-object v12, v6

    if-eqz v12, :cond_4

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 859
    :cond_5
    const/4 v12, 0x0

    move-object v7, v12

    .line 860
    .local v7, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object v12, v6

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :goto_1
    move v8, v12

    .line 861
    .local v8, "max":I
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_2
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_a

    .line 862
    move-object v12, v6

    move v13, v9

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/CascadingStyle;

    move-object v10, v12

    .line 863
    .local v10, "s":Lcom/sun/javafx/css/CascadingStyle;
    move-object v12, v10

    if-nez v12, :cond_8

    const/4 v12, 0x0

    :goto_3
    move-object v11, v12

    .line 864
    .local v11, "sel":Lcom/sun/javafx/css/Selector;
    move-object v12, v11

    if-nez v12, :cond_9

    .line 861
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 860
    .end local v8    # "max":I
    .end local v9    # "i":I
    .end local v10    # "s":Lcom/sun/javafx/css/CascadingStyle;
    .end local v11    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_7
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_1

    .line 863
    .restart local v8    # "max":I
    .restart local v9    # "i":I
    .restart local v10    # "s":Lcom/sun/javafx/css/CascadingStyle;
    :cond_8
    move-object v12, v10

    invoke-virtual {v12}, Lcom/sun/javafx/css/CascadingStyle;->getSelector()Lcom/sun/javafx/css/Selector;

    move-result-object v12

    goto :goto_3

    .line 866
    .restart local v11    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_9
    move-object v12, v11

    move-object v13, v1

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/css/Selector;->stateMatches(Ljavafx/css/Styleable;Ljava/util/Set;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 867
    move-object v12, v10

    move-object v7, v12

    .line 872
    .end local v10    # "s":Lcom/sun/javafx/css/CascadingStyle;
    .end local v11    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_a
    move-object v12, v7

    move-object v0, v12

    goto :goto_0
.end method

.method private getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 460
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$700(Ljavafx/scene/CssStyleHelper$CacheContainer;Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private getTransitionStates(Ljavafx/scene/Node;)[Ljava/util/Set;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    .line 551
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 506
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    const/4 v8, 0x0

    move v2, v8

    .line 507
    .local v2, "depth":I
    move-object v8, v1

    move-object v3, v8

    .line 508
    .local v3, "parent":Ljavafx/scene/Node;
    :goto_1
    move-object v8, v3

    if-eqz v8, :cond_1

    .line 509
    add-int/lit8 v2, v2, 0x1

    .line 510
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v3, v8

    goto :goto_1

    .line 524
    :cond_1
    move v8, v2

    new-array v8, v8, [Lcom/sun/javafx/css/PseudoClassState;

    move-object v4, v8

    .line 533
    .local v4, "retainedStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    const/4 v8, 0x0

    move v5, v8

    .line 534
    .local v5, "count":I
    move-object v8, v1

    move-object v3, v8

    .line 535
    :goto_2
    move-object v8, v3

    if-eqz v8, :cond_4

    .line 536
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/Node;

    if-eqz v8, :cond_3

    move-object v8, v3

    iget-object v8, v8, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_3
    move-object v6, v8

    .line 537
    .local v6, "helper":Ljavafx/scene/CssStyleHelper;
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 538
    move-object v8, v3

    iget-object v8, v8, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object v7, v8

    .line 539
    .local v7, "pseudoClassState":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v8, v4

    move v9, v5

    new-instance v10, Lcom/sun/javafx/css/PseudoClassState;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    aput-object v10, v8, v9

    .line 540
    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v7

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 542
    move-object v8, v4

    move v9, v5

    aget-object v8, v8, v9

    move-object v9, v6

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    invoke-interface {v8, v9}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v8

    .line 543
    add-int/lit8 v5, v5, 0x1

    .line 545
    .end local v7    # "pseudoClassState":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_2
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    move-object v3, v8

    .line 546
    goto :goto_2

    .line 536
    .end local v6    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 548
    :cond_4
    move v8, v5

    new-array v8, v8, [Lcom/sun/javafx/css/PseudoClassState;

    move-object v6, v8

    .line 549
    .local v6, "transitionStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move v12, v5

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    move-object v8, v6

    move-object v0, v8

    goto :goto_0
.end method

.method private getUnresolvedLookup(Lcom/sun/javafx/css/ParsedValueImpl;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "resolved":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 1263
    .local v2, "value":Ljava/lang/Object;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/css/ParsedValueImpl;->isLookup()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v2

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1264
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    .line 1287
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 1267
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v7, v2

    instance-of v7, v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v7, :cond_5

    .line 1268
    move-object v7, v2

    check-cast v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v7, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v7

    .line 1269
    .local v3, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v7, 0x0

    move v4, v7

    .local v4, "l":I
    :goto_1
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 1270
    const/4 v7, 0x0

    move v5, v7

    .local v5, "ll":I
    :goto_2
    move v7, v5

    move-object v8, v3

    move v9, v4

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v7, v8, :cond_3

    .line 1271
    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    move v8, v5

    aget-object v7, v7, v8

    if-nez v7, :cond_2

    .line 1270
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1272
    :cond_2
    move-object v7, v0

    move-object v8, v3

    move v9, v4

    aget-object v8, v8, v9

    move v9, v5

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljavafx/scene/CssStyleHelper;->getUnresolvedLookup(Lcom/sun/javafx/css/ParsedValueImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 1273
    .local v6, "unresolvedLookup":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_1

    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 1269
    .end local v6    # "unresolvedLookup":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1277
    .line 1287
    .end local v3    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v4    # "l":I
    .end local v5    # "ll":I
    :cond_4
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 1277
    :cond_5
    move-object v7, v2

    instance-of v7, v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v7, :cond_4

    .line 1279
    move-object v7, v2

    check-cast v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v7, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v3, v7

    .line 1280
    .local v3, "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v7, 0x0

    move v4, v7

    .restart local v4    # "l":I
    :goto_3
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 1281
    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    if-nez v7, :cond_7

    .line 1280
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1282
    :cond_7
    move-object v7, v0

    move-object v8, v3

    move v9, v4

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Ljavafx/scene/CssStyleHelper;->getUnresolvedLookup(Lcom/sun/javafx/css/ParsedValueImpl;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1283
    .local v5, "unresolvedLookup":Ljava/lang/String;
    move-object v7, v5

    if-eqz v7, :cond_6

    move-object v7, v5

    move-object v0, v7

    goto :goto_0
.end method

.method private handleNoStyleFound(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;",
            "Ljavafx/css/Styleable;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ")",
            "Lcom/sun/javafx/css/CalculatedValue;"
        }
    .end annotation

    .prologue
    .line 1032
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object/from16 v3, p3

    .local v3, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v4, p4

    .local v4, "pseudoClassStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v5, p5

    .local v5, "originatingStyleable":Ljavafx/css/Styleable;
    move-object/from16 v6, p6

    .local v6, "cachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/css/CssMetaData;->isInherits()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1035
    move-object v11, v2

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v11

    move-object v7, v11

    .line 1036
    .local v7, "styleableProperty":Ljavafx/css/StyleableProperty;
    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v7

    invoke-interface {v11}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v11

    :goto_0
    move-object v8, v11

    .line 1040
    .local v8, "origin":Ljavafx/css/StyleOrigin;
    move-object v11, v8

    sget-object v12, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    if-ne v11, v12, :cond_1

    .line 1042
    sget-object v11, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object v0, v11

    .line 1059
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .end local v7    # "styleableProperty":Ljavafx/css/StyleableProperty;
    .end local v8    # "origin":Ljavafx/css/StyleOrigin;
    :goto_1
    return-object v0

    .line 1036
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .restart local v7    # "styleableProperty":Ljavafx/css/StyleableProperty;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1046
    .restart local v8    # "origin":Ljavafx/css/StyleOrigin;
    :cond_1
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavafx/scene/CssStyleHelper;->getInheritedStyle(Ljavafx/css/Styleable;Ljava/lang/String;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v11

    move-object v9, v11

    .line 1047
    .local v9, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object v11, v9

    if-nez v11, :cond_2

    sget-object v11, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object v0, v11

    goto :goto_1

    .line 1049
    :cond_2
    move-object v11, v0

    move-object v12, v9

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1050
    invoke-direct/range {v11 .. v18}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v11

    move-object v10, v11

    .line 1054
    .local v10, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object v11, v10

    move-object v0, v11

    goto :goto_1

    .line 1059
    .end local v7    # "styleableProperty":Ljavafx/css/StyleableProperty;
    .end local v8    # "origin":Ljavafx/css/StyleOrigin;
    .end local v9    # "style":Lcom/sun/javafx/css/CascadingStyle;
    .end local v10    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    :cond_3
    sget-object v11, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object v0, v11

    goto :goto_1
.end method

.method private static isTrue(Ljavafx/beans/value/WritableValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "booleanProperty":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljavafx/beans/value/WritableValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "booleanProperty":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    return v0

    .restart local v0    # "booleanProperty":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isUserSetFont(Ljavafx/css/Styleable;)Z
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "node":Ljavafx/css/Styleable;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 242
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return v0

    .line 224
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v5}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$300(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljavafx/css/CssMetaData;

    move-result-object v5

    :goto_1
    move-object v2, v5

    .line 225
    .local v2, "fontCssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljavafx/scene/text/Font;>;"
    move-object v5, v2

    if-eqz v5, :cond_3

    .line 226
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 227
    .local v3, "fontStyleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;"
    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v5

    sget-object v6, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 224
    .end local v2    # "fontCssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljavafx/scene/text/Font;>;"
    .end local v3    # "fontStyleableProperty":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 226
    .restart local v2    # "fontCssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljavafx/scene/text/Font;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 230
    :cond_3
    const/4 v5, 0x0

    move-object v3, v5

    .line 231
    .local v3, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object v5, v1

    move-object v4, v5

    .line 233
    .local v4, "styleableParent":Ljavafx/css/Styleable;
    :cond_4
    move-object v5, v4

    invoke-interface {v5}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v5

    move-object v4, v5

    .line 234
    move-object v5, v4

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_5

    .line 235
    move-object v5, v4

    check-cast v5, Ljavafx/scene/Node;

    iget-object v5, v5, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v3, v5

    .line 237
    :cond_5
    move-object v5, v3

    if-nez v5, :cond_6

    move-object v5, v4

    if-nez v5, :cond_4

    .line 239
    :cond_6
    move-object v5, v3

    if-eqz v5, :cond_7

    .line 240
    move-object v5, v3

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavafx/scene/CssStyleHelper;->isUserSetFont(Ljavafx/css/Styleable;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 242
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method private lookup(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljavafx/css/CssMetaData;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;",
            "Ljavafx/css/Styleable;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ")",
            "Lcom/sun/javafx/css/CalculatedValue;"
        }
    .end annotation

    .prologue
    .line 895
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v3, p1

    .local v3, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v4, p2

    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object/from16 v5, p3

    .local v5, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v6, p4

    .local v6, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v7, p5

    .local v7, "originatingStyleable":Ljavafx/css/Styleable;
    move-object/from16 v8, p6

    .local v8, "cachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/CssMetaData;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v20

    invoke-static {}, Lcom/sun/javafx/css/converters/FontConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 896
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    invoke-virtual/range {v20 .. v24}, Ljavafx/scene/CssStyleHelper;->lookupFont(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v20

    move-object/from16 v2, v20

    .line 1020
    .end local v2    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v2

    .line 899
    .restart local v2    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v9, v20

    .line 902
    .local v9, "property":Ljava/lang/String;
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v20

    move-object/from16 v10, v20

    .line 908
    .local v10, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/css/CssMetaData;->getSubProperties()Ljava/util/List;

    move-result-object v20

    move-object/from16 v11, v20

    .line 909
    .local v11, "subProperties":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object/from16 v20, v11

    if-eqz v20, :cond_1

    move-object/from16 v20, v11

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    :goto_1
    move/from16 v12, v20

    .line 910
    .local v12, "numSubProperties":I
    move-object/from16 v20, v10

    if-nez v20, :cond_10

    .line 912
    move/from16 v20, v12

    if-nez v20, :cond_2

    .line 914
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    invoke-direct/range {v20 .. v26}, Ljavafx/scene/CssStyleHelper;->handleNoStyleFound(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v20

    move-object/from16 v2, v20

    goto :goto_0

    .line 909
    .end local v12    # "numSubProperties":I
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 929
    .restart local v12    # "numSubProperties":I
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v13, v20

    .line 930
    .local v13, "subs":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData;Ljava/lang/Object;>;"
    const/16 v20, 0x0

    move-object/from16 v14, v20

    .line 932
    .local v14, "origin":Ljavafx/css/StyleOrigin;
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 934
    .local v15, "isRelative":Z
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "i":I
    :goto_2
    move/from16 v20, v16

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 935
    move-object/from16 v20, v11

    move/from16 v21, v16

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/css/CssMetaData;

    move-object/from16 v17, v20

    .line 936
    .local v17, "subkey":Ljavafx/css/CssMetaData;
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v17

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    .line 937
    invoke-direct/range {v20 .. v26}, Ljavafx/scene/CssStyleHelper;->lookup(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v20

    move-object/from16 v18, v20

    .line 939
    .local v18, "constituent":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v20, v18

    sget-object v21, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 940
    move-object/from16 v20, v13

    if-nez v20, :cond_3

    .line 941
    new-instance v20, Ljava/util/HashMap;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v13, v20

    .line 943
    :cond_3
    move-object/from16 v20, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 946
    move-object/from16 v20, v14

    if-eqz v20, :cond_7

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v14

    move-object/from16 v21, v18

    .line 947
    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v20

    if-gez v20, :cond_4

    .line 949
    :goto_3
    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v20

    move-object/from16 v14, v20

    .line 954
    :cond_4
    move/from16 v20, v15

    if-nez v20, :cond_5

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v20

    if-eqz v20, :cond_8

    :cond_5
    const/16 v20, 0x1

    :goto_4
    move/from16 v15, v20

    .line 934
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 947
    :cond_7
    move-object/from16 v20, v18

    .line 948
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v20

    if-eqz v20, :cond_4

    goto :goto_3

    .line 954
    :cond_8
    const/16 v20, 0x0

    goto :goto_4

    .line 960
    .end local v17    # "subkey":Ljavafx/css/CssMetaData;
    .end local v18    # "constituent":Lcom/sun/javafx/css/CalculatedValue;
    :cond_9
    move-object/from16 v20, v13

    if-eqz v20, :cond_a

    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 961
    :cond_a
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    invoke-direct/range {v20 .. v26}, Ljavafx/scene/CssStyleHelper;->handleNoStyleFound(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 966
    :cond_b
    move-object/from16 v20, v4

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljavafx/css/CssMetaData;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v20

    move-object/from16 v16, v20

    .line 967
    .local v16, "keyType":Ljavafx/css/StyleConverter;
    move-object/from16 v20, v16

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sun/javafx/css/StyleConverterImpl;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 968
    move-object/from16 v20, v16

    check-cast v20, Lcom/sun/javafx/css/StyleConverterImpl;

    move-object/from16 v21, v13

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/StyleConverterImpl;->convert(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v17, v20

    .line 969
    .local v17, "ret":Ljava/lang/Object;
    new-instance v20, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v17

    move-object/from16 v23, v14

    move/from16 v24, v15

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 971
    .end local v17    # "ret":Ljava/lang/Object;
    :cond_c
    sget-boolean v20, Ljavafx/scene/CssStyleHelper;->$assertionsDisabled:Z

    if-nez v20, :cond_f

    new-instance v20, Ljava/lang/AssertionError;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v20
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .end local v16    # "keyType":Ljavafx/css/StyleConverter;
    :catch_0
    move-exception v20

    move-object/from16 v16, v20

    .line 975
    .local v16, "cce":Ljava/lang/ClassCastException;
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/16 v23, 0x0

    move-object/from16 v24, v16

    invoke-direct/range {v20 .. v24}, Ljavafx/scene/CssStyleHelper;->formatExceptionMessage(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/Style;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v20

    .line 976
    .local v17, "msg":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v18, v20

    .line 977
    .local v18, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v20

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v18, v21

    if-eqz v20, :cond_d

    .line 978
    new-instance v20, Lcom/sun/javafx/css/CssError$PropertySetError;

    move-object/from16 v28, v20

    move-object/from16 v20, v28

    move-object/from16 v21, v28

    move-object/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v17

    invoke-direct/range {v21 .. v24}, Lcom/sun/javafx/css/CssError$PropertySetError;-><init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object/from16 v19, v20

    .line 979
    .local v19, "error":Lcom/sun/javafx/css/CssError;
    move-object/from16 v20, v18

    move-object/from16 v21, v19

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 981
    .end local v19    # "error":Lcom/sun/javafx/css/CssError;
    :cond_d
    sget-object v20, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v21, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 982
    sget-object v20, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    move-object/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 983
    sget-object v20, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    const-string v21, "caught: "

    move-object/from16 v22, v16

    invoke-virtual/range {v20 .. v22}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 984
    sget-object v20, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "styleable = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 985
    sget-object v20, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "node = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 987
    :cond_e
    sget-object v20, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 972
    .end local v17    # "msg":Ljava/lang/String;
    .end local v18    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    .local v16, "keyType":Ljavafx/css/StyleConverter;
    :cond_f
    :try_start_1
    sget-object v20, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 998
    .end local v13    # "subs":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/CssMetaData;Ljava/lang/Object;>;"
    .end local v14    # "origin":Ljavafx/css/StyleOrigin;
    .end local v15    # "isRelative":Z
    .end local v16    # "keyType":Ljavafx/css/StyleConverter;
    :cond_10
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v20

    sget-object v21, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1000
    move-object/from16 v20, v4

    move-object/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v20

    move-object/from16 v13, v20

    .line 1002
    .local v13, "styleableProperty":Ljavafx/css/StyleableProperty;
    move-object/from16 v20, v13

    if-eqz v20, :cond_11

    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v20

    sget-object v21, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 1003
    sget-object v20, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 1009
    .end local v13    # "styleableProperty":Ljavafx/css/StyleableProperty;
    :cond_11
    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v20

    move-object/from16 v13, v20

    .line 1010
    .local v13, "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v20, v13

    if-eqz v20, :cond_12

    const-string v20, "inherit"

    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1011
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    invoke-direct/range {v20 .. v22}, Ljavafx/scene/CssStyleHelper;->getInheritedStyle(Ljavafx/css/Styleable;Ljava/lang/String;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v20

    move-object/from16 v10, v20

    .line 1012
    move-object/from16 v20, v10

    if-nez v20, :cond_12

    sget-object v20, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 1020
    :cond_12
    move-object/from16 v20, v2

    move-object/from16 v21, v10

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    invoke-direct/range {v20 .. v27}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v20

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method private lookupInheritedFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;ILcom/sun/javafx/css/CascadingStyle;)Lcom/sun/javafx/css/CascadingStyle;
    .locals 18

    .prologue
    .line 1969
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move/from16 v4, p4

    .local v4, "distance":I
    move-object/from16 v5, p5

    .local v5, "fontShorthand":Lcom/sun/javafx/css/CascadingStyle;
    move-object v13, v1

    if-eqz v13, :cond_0

    move-object v13, v1

    invoke-interface {v13}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v13

    :goto_0
    move-object v6, v13

    .line 1971
    .local v6, "parent":Ljavafx/css/Styleable;
    move v13, v4

    move v7, v13

    .line 1972
    .local v7, "nlooks":I
    :goto_1
    move-object v13, v6

    if-eqz v13, :cond_4

    move v13, v7

    if-lez v13, :cond_4

    .line 1974
    move-object v13, v6

    instance-of v13, v13, Ljavafx/scene/Node;

    if-eqz v13, :cond_1

    move-object v13, v6

    check-cast v13, Ljavafx/scene/Node;

    iget-object v13, v13, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    :goto_2
    move-object v8, v13

    .line 1975
    .local v8, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object v13, v8

    if-eqz v13, :cond_3

    .line 1977
    add-int/lit8 v7, v7, -0x1

    .line 1979
    move-object v13, v8

    move-object v14, v6

    invoke-direct {v13, v14}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v13

    move-object v9, v13

    .line 1980
    .local v9, "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    move-object v13, v6

    check-cast v13, Ljavafx/scene/Node;

    iget-object v13, v13, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object v10, v13

    .line 1981
    .local v10, "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v13, v8

    move-object v14, v6

    move-object v15, v2

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-direct/range {v13 .. v17}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v13

    move-object v11, v13

    .line 1983
    .local v11, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object v13, v11

    if-eqz v13, :cond_3

    .line 1987
    move-object v13, v5

    if-eqz v13, :cond_2

    move v13, v7

    if-nez v13, :cond_2

    .line 1988
    move-object v13, v5

    move-object v14, v11

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v13

    if-gez v13, :cond_2

    .line 1989
    const/4 v13, 0x0

    move-object v0, v13

    .line 2006
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .end local v8    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .end local v9    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v10    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v11    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    :goto_3
    return-object v0

    .line 1969
    .end local v6    # "parent":Ljavafx/css/Styleable;
    .end local v7    # "nlooks":I
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 1974
    .restart local v6    # "parent":Ljavafx/css/Styleable;
    .restart local v7    # "nlooks":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 1993
    .restart local v8    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .restart local v9    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .restart local v10    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .restart local v11    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    :cond_2
    move-object v13, v11

    invoke-virtual {v13}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object v12, v13

    .line 1995
    .local v12, "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    const-string v13, "inherit"

    move-object v14, v12

    invoke-virtual {v14}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1996
    move-object v13, v11

    move-object v0, v13

    goto :goto_3

    .line 2002
    .end local v9    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v10    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v11    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v12    # "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_3
    move-object v13, v6

    invoke-interface {v13}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v13

    move-object v6, v13

    .line 2004
    goto :goto_1

    .line 2006
    .end local v8    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    :cond_4
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_3
.end method

.method private resetToInitialValues(Ljavafx/css/Styleable;)V
    .locals 13

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    .line 437
    invoke-static {v9}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    .line 438
    invoke-static {v9}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    new-instance v9, Ljava/util/HashSet;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v11}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v9

    .line 442
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/CalculatedValue;>;>;"
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    invoke-static {v9}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 444
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v3, v9

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v4, v9

    .line 446
    .local v4, "resetValues":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/CalculatedValue;>;"
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/css/CssMetaData;

    move-object v5, v9

    .line 447
    .local v5, "metaData":Ljavafx/css/CssMetaData;
    move-object v9, v5

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v9

    move-object v6, v9

    .line 449
    .local v6, "styleableProperty":Ljavafx/css/StyleableProperty;
    move-object v9, v6

    invoke-interface {v9}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v9

    move-object v7, v9

    .line 450
    .local v7, "styleOrigin":Ljavafx/css/StyleOrigin;
    move-object v9, v7

    if-eqz v9, :cond_2

    move-object v9, v7

    sget-object v10, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    if-eq v9, v10, :cond_2

    .line 451
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/css/CalculatedValue;

    move-object v8, v9

    .line 452
    .local v8, "calculatedValue":Lcom/sun/javafx/css/CalculatedValue;
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v10}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v11}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 454
    .end local v8    # "calculatedValue":Lcom/sun/javafx/css/CalculatedValue;
    :cond_2
    goto :goto_1

    .line 455
    .end local v4    # "resetValues":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/CalculatedValue;>;"
    .end local v5    # "metaData":Ljavafx/css/CssMetaData;
    .end local v6    # "styleableProperty":Ljavafx/css/StyleableProperty;
    .end local v7    # "styleOrigin":Ljavafx/css/StyleOrigin;
    :cond_3
    goto :goto_0
.end method

.method private resolveLookups(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/beans/property/ObjectProperty;Ljava/util/Set;)Lcom/sun/javafx/css/ParsedValueImpl;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Lcom/sun/javafx/css/ParsedValueImpl;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/css/StyleOrigin;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/ParsedValue;",
            ">;)",
            "Lcom/sun/javafx/css/ParsedValueImpl;"
        }
    .end annotation

    .prologue
    .line 1161
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "parsedValue":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object/from16 v3, p3

    .local v3, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v4, p4

    .local v4, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v5, p5

    .local v5, "whence":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/css/StyleOrigin;>;"
    move-object/from16 v6, p6

    .local v6, "resolves":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/ParsedValue;>;"
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/css/ParsedValueImpl;->isLookup()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1165
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 1166
    .local v7, "val":Ljava/lang/Object;
    move-object v13, v7

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_5

    .line 1168
    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 1170
    .local v8, "sval":Ljava/lang/String;
    move-object v13, v0

    move-object v14, v1

    move-object v15, v8

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 1171
    invoke-direct/range {v13 .. v17}, Ljavafx/scene/CssStyleHelper;->resolveRef(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v13

    move-object v9, v13

    .line 1173
    .local v9, "resolved":Lcom/sun/javafx/css/CascadingStyle;
    move-object v13, v9

    if-eqz v13, :cond_5

    .line 1175
    move-object v13, v6

    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1177
    sget-object v13, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v14, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1178
    sget-object v13, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loop detected in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/CascadingStyle;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/javafx/css/Rule;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " while resolving \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1180
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loop detected in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/CascadingStyle;->getRule()Lcom/sun/javafx/css/Rule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/Rule;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " while resolving \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1183
    :cond_1
    move-object v13, v6

    move-object v14, v2

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1192
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/css/StyleOrigin;

    move-object v10, v13

    .line 1193
    .local v10, "wOrigin":Ljavafx/css/StyleOrigin;
    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v13

    move-object v11, v13

    .line 1194
    .local v11, "rOrigin":Ljavafx/css/StyleOrigin;
    move-object v13, v11

    if-eqz v13, :cond_3

    move-object v13, v10

    if-eqz v13, :cond_2

    move-object v13, v10

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v13

    if-gez v13, :cond_3

    .line 1195
    :cond_2
    move-object v13, v5

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1201
    :cond_3
    move-object v13, v0

    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Ljavafx/scene/CssStyleHelper;->resolveLookups(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/beans/property/ObjectProperty;Ljava/util/Set;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v13

    move-object v12, v13

    .line 1203
    .local v12, "pv":Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v13, v6

    if-eqz v13, :cond_4

    .line 1204
    move-object v13, v6

    move-object v14, v2

    invoke-interface {v13, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    .line 1207
    :cond_4
    move-object v13, v12

    move-object v0, v13

    .line 1255
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    .end local v7    # "val":Ljava/lang/Object;
    .end local v8    # "sval":Ljava/lang/String;
    .end local v9    # "resolved":Lcom/sun/javafx/css/CascadingStyle;
    .end local v10    # "wOrigin":Ljavafx/css/StyleOrigin;
    .end local v11    # "rOrigin":Ljavafx/css/StyleOrigin;
    .end local v12    # "pv":Lcom/sun/javafx/css/ParsedValueImpl;
    :goto_0
    return-object v0

    .line 1214
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_5
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/css/ParsedValueImpl;->isContainsLookups()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1215
    move-object v13, v2

    move-object v0, v13

    goto :goto_0

    .line 1218
    :cond_6
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    .line 1220
    .restart local v7    # "val":Ljava/lang/Object;
    move-object v13, v7

    instance-of v13, v13, [[Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v13, :cond_a

    .line 1223
    move-object v13, v7

    check-cast v13, [[Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v13, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v8, v13

    .line 1224
    .local v8, "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v13, v8

    array-length v13, v13

    const/4 v14, 0x0

    filled-new-array {v13, v14}, [I

    move-result-object v14

    const-class v13, Lcom/sun/javafx/css/ParsedValueImpl;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v13

    .line 1225
    .local v9, "resolved":[[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v13, 0x0

    move v10, v13

    .local v10, "l":I
    :goto_1
    move v13, v10

    move-object v14, v8

    array-length v14, v14

    if-ge v13, v14, :cond_9

    .line 1226
    move-object v13, v9

    move v14, v10

    move-object v15, v8

    move/from16 v16, v10

    aget-object v15, v15, v16

    array-length v15, v15

    new-array v15, v15, [Lcom/sun/javafx/css/ParsedValueImpl;

    aput-object v15, v13, v14

    .line 1227
    const/4 v13, 0x0

    move v11, v13

    .local v11, "ll":I
    :goto_2
    move v13, v11

    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    array-length v14, v14

    if-ge v13, v14, :cond_8

    .line 1228
    move-object v13, v8

    move v14, v10

    aget-object v13, v13, v14

    move v14, v11

    aget-object v13, v13, v14

    if-nez v13, :cond_7

    .line 1227
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1229
    :cond_7
    move-object v13, v9

    move v14, v10

    aget-object v13, v13, v14

    move v14, v11

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    move/from16 v18, v10

    aget-object v17, v17, v18

    move/from16 v18, v11

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 1230
    invoke-direct/range {v15 .. v21}, Ljavafx/scene/CssStyleHelper;->resolveLookups(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/beans/property/ObjectProperty;Ljava/util/Set;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    aput-object v15, v13, v14

    goto :goto_3

    .line 1225
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1234
    .end local v11    # "ll":I
    :cond_9
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 1236
    new-instance v13, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v9

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/ParsedValueImpl;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object v0, v13

    goto/16 :goto_0

    .line 1238
    .end local v8    # "layers":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v9    # "resolved":[[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v10    # "l":I
    :cond_a
    move-object v13, v7

    instance-of v13, v13, [Lcom/sun/javafx/css/ParsedValueImpl;

    if-eqz v13, :cond_d

    .line 1241
    move-object v13, v7

    check-cast v13, [Lcom/sun/javafx/css/ParsedValueImpl;

    check-cast v13, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v8, v13

    .line 1242
    .local v8, "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    move-object v13, v8

    array-length v13, v13

    new-array v13, v13, [Lcom/sun/javafx/css/ParsedValueImpl;

    move-object v9, v13

    .line 1243
    .local v9, "resolved":[Lcom/sun/javafx/css/ParsedValueImpl;
    const/4 v13, 0x0

    move v10, v13

    .restart local v10    # "l":I
    :goto_4
    move v13, v10

    move-object v14, v8

    array-length v14, v14

    if-ge v13, v14, :cond_c

    .line 1244
    move-object v13, v8

    move v14, v10

    aget-object v13, v13, v14

    if-nez v13, :cond_b

    .line 1243
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1245
    :cond_b
    move-object v13, v9

    move v14, v10

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    move/from16 v18, v10

    aget-object v17, v17, v18

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .line 1246
    invoke-direct/range {v15 .. v21}, Ljavafx/scene/CssStyleHelper;->resolveLookups(Ljavafx/css/Styleable;Lcom/sun/javafx/css/ParsedValueImpl;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/beans/property/ObjectProperty;Ljava/util/Set;)Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v15

    aput-object v15, v13, v14

    goto :goto_5

    .line 1249
    :cond_c
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 1251
    new-instance v13, Lcom/sun/javafx/css/ParsedValueImpl;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v9

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/css/ParsedValueImpl;->getConverter()Ljavafx/css/StyleConverter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/sun/javafx/css/ParsedValueImpl;-><init>(Ljava/lang/Object;Ljavafx/css/StyleConverter;Z)V

    move-object v0, v13

    goto/16 :goto_0

    .line 1255
    .end local v8    # "layer":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v9    # "resolved":[Lcom/sun/javafx/css/ParsedValueImpl;
    .end local v10    # "l":I
    :cond_d
    move-object v13, v2

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private resolveRef(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/Styleable;",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/css/StyleMap;",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;)",
            "Lcom/sun/javafx/css/CascadingStyle;"
        }
    .end annotation

    .prologue
    .line 1110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v4, p4

    .local v4, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v10

    move-object v5, v10

    .line 1111
    .local v5, "style":Lcom/sun/javafx/css/CascadingStyle;
    move-object v10, v5

    if-eqz v10, :cond_0

    .line 1112
    move-object v10, v5

    move-object v0, v10

    .line 1144
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 1116
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1119
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    sget-object v14, Ljavafx/scene/CssStyleHelper;->NULL_PSEUDO_CLASS_STATE:Ljava/util/Set;

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/CssStyleHelper;->resolveRef(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 1122
    :cond_1
    move-object v10, v1

    invoke-interface {v10}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v10

    move-object v6, v10

    .line 1123
    .local v6, "styleableParent":Ljavafx/css/Styleable;
    const/4 v10, 0x0

    move-object v7, v10

    .line 1124
    .local v7, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object v10, v6

    if-eqz v10, :cond_2

    move-object v10, v6

    instance-of v10, v10, Ljavafx/scene/Node;

    if-eqz v10, :cond_2

    .line 1125
    move-object v10, v6

    check-cast v10, Ljavafx/scene/Node;

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v7, v10

    .line 1127
    :cond_2
    :goto_1
    move-object v10, v6

    if-eqz v10, :cond_3

    move-object v10, v7

    if-nez v10, :cond_3

    .line 1128
    move-object v10, v6

    invoke-interface {v10}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v10

    move-object v6, v10

    .line 1129
    move-object v10, v6

    if-eqz v10, :cond_2

    move-object v10, v6

    instance-of v10, v10, Ljavafx/scene/Node;

    if-eqz v10, :cond_2

    .line 1130
    move-object v10, v6

    check-cast v10, Ljavafx/scene/Node;

    iget-object v10, v10, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v7, v10

    goto :goto_1

    .line 1134
    :cond_3
    move-object v10, v6

    if-eqz v10, :cond_4

    move-object v10, v7

    if-nez v10, :cond_5

    .line 1135
    :cond_4
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 1138
    :cond_5
    move-object v10, v7

    move-object v11, v6

    invoke-direct {v10, v11}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v10

    move-object v8, v10

    .line 1139
    .local v8, "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    move-object v10, v6

    instance-of v10, v10, Ljavafx/scene/Node;

    if-eqz v10, :cond_6

    move-object v10, v6

    check-cast v10, Ljavafx/scene/Node;

    iget-object v10, v10, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    .line 1142
    :goto_2
    move-object v9, v10

    .line 1144
    .local v9, "styleableParentPseudoClassStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object v10, v7

    move-object v11, v6

    move-object v12, v2

    move-object v13, v8

    move-object v14, v9

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/scene/CssStyleHelper;->resolveRef(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v10

    move-object v0, v10

    goto :goto_0

    .line 1139
    .end local v9    # "styleableParentPseudoClassStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    :cond_6
    move-object v10, v1

    .line 1142
    invoke-interface {v10}, Ljavafx/css/Styleable;->getPseudoClassStates()Ljavafx/collections/ObservableSet;

    move-result-object v10

    goto :goto_2
.end method

.method private static setTrue(Ljavafx/beans/value/WritableValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "booleanProperty":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/beans/value/WritableValue;->setValue(Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-void
.end method

.method private static updateParentTriggerStates(Ljavafx/css/Styleable;I[Lcom/sun/javafx/css/PseudoClassState;)V
    .locals 11

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "styleable":Ljavafx/css/Styleable;
    move v1, p1

    .local v1, "depth":I
    move-object v2, p2

    .local v2, "triggerStates":[Lcom/sun/javafx/css/PseudoClassState;
    move-object v7, v0

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v3, v7

    .line 190
    .local v3, "parent":Ljavafx/css/Styleable;
    const/4 v7, 0x1

    move v4, v7

    .local v4, "n":I
    :goto_0
    move v7, v4

    move v8, v1

    if-ge v7, v8, :cond_3

    .line 193
    move-object v7, v3

    instance-of v7, v7, Ljavafx/scene/Node;

    if-nez v7, :cond_0

    .line 194
    move-object v7, v3

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v3, v7

    .line 190
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_0
    move-object v7, v3

    check-cast v7, Ljavafx/scene/Node;

    move-object v5, v7

    .line 199
    .local v5, "parentNode":Ljavafx/scene/Node;
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v6, v7

    .line 203
    .local v6, "triggerState":Lcom/sun/javafx/css/PseudoClassState;
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/javafx/css/PseudoClassState;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 206
    move-object v7, v5

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-nez v7, :cond_1

    .line 207
    move-object v7, v5

    new-instance v8, Ljavafx/scene/CssStyleHelper;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljavafx/scene/CssStyleHelper;-><init>()V

    iput-object v8, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    .line 209
    :cond_1
    move-object v7, v5

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    iget-object v7, v7, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/PseudoClassState;->addAll(Ljava/util/Collection;)Z

    move-result v7

    .line 213
    :cond_2
    move-object v7, v3

    invoke-interface {v7}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 216
    .end local v5    # "parentNode":Ljavafx/scene/Node;
    .end local v6    # "triggerState":Lcom/sun/javafx/css/PseudoClassState;
    :cond_3
    return-void
.end method


# virtual methods
.method deriveFont(Ljavafx/scene/text/Font;Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;
    .locals 13

    .prologue
    .line 1636
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/CssStyleHelper;
    move-object v2, p1

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object v3, p2

    .local v3, "fontFamily":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "fontWeight":Ljavafx/scene/text/FontWeight;
    move-object/from16 v5, p4

    .local v5, "fontPosture":Ljavafx/scene/text/FontPosture;
    move-wide/from16 v6, p5

    .local v6, "fontSize":D
    move-object v8, v2

    if-eqz v8, :cond_4

    move-object v8, v3

    if-nez v8, :cond_4

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/CssStyleHelper;->getFontFamily(Ljavafx/scene/text/Font;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 1639
    :cond_0
    :goto_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v4

    if-nez v8, :cond_1

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/CssStyleHelper;->getFontWeight(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;

    move-result-object v8

    move-object v4, v8

    .line 1640
    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v5

    if-nez v8, :cond_2

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/CssStyleHelper;->getFontPosture(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontPosture;

    move-result-object v8

    move-object v5, v8

    .line 1641
    :cond_2
    move-object v8, v2

    if-eqz v8, :cond_3

    move-wide v8, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v8

    move-wide v6, v8

    .line 1643
    :cond_3
    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    move-wide v11, v6

    invoke-static {v8, v9, v10, v11, v12}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/CssStyleHelper;
    return-object v1

    .line 1637
    .restart local v1    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_4
    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    invoke-static {v8}, Lcom/sun/javafx/util/Utils;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    goto :goto_0
.end method

.method getFontFamily(Ljavafx/scene/text/Font;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v1

    if-nez v2, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1625
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method getFontPosture(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontPosture;
    .locals 5

    .prologue
    .line 1581
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    move-object v0, v3

    .line 1589
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 1583
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/text/Font;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1585
    .local v2, "fontName":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "italic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1586
    sget-object v3, Ljavafx/scene/text/FontPosture;->ITALIC:Ljavafx/scene/text/FontPosture;

    move-object v0, v3

    goto :goto_0

    .line 1589
    :cond_1
    sget-object v3, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    move-object v0, v3

    goto :goto_0
.end method

.method getFontWeight(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;
    .locals 5

    .prologue
    .line 1593
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    .line 1619
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_0
    return-object v0

    .line 1595
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/text/Font;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1597
    .local v2, "fontName":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "bold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1598
    move-object v3, v2

    const-string v4, "extra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1599
    :cond_1
    move-object v3, v2

    const-string v4, "ultra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1600
    :cond_2
    move-object v3, v2

    const-string v4, "semi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljavafx/scene/text/FontWeight;->SEMI_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1601
    :cond_3
    move-object v3, v2

    const-string v4, "demi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljavafx/scene/text/FontWeight;->SEMI_BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1602
    :cond_4
    sget-object v3, Ljavafx/scene/text/FontWeight;->BOLD:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1604
    :cond_5
    move-object v3, v2

    const-string v4, "light"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1605
    move-object v3, v2

    const-string v4, "extra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1606
    :cond_6
    move-object v3, v2

    const-string v4, "ultra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Ljavafx/scene/text/FontWeight;->EXTRA_LIGHT:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1607
    :cond_7
    sget-object v3, Ljavafx/scene/text/FontWeight;->LIGHT:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto :goto_0

    .line 1609
    :cond_8
    move-object v3, v2

    const-string v4, "black"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1610
    sget-object v3, Ljavafx/scene/text/FontWeight;->BLACK:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto/16 :goto_0

    .line 1612
    :cond_9
    move-object v3, v2

    const-string v4, "heavy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1613
    sget-object v3, Ljavafx/scene/text/FontWeight;->BLACK:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto/16 :goto_0

    .line 1615
    :cond_a
    move-object v3, v2

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1616
    sget-object v3, Ljavafx/scene/text/FontWeight;->MEDIUM:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto/16 :goto_0

    .line 1619
    :cond_b
    sget-object v3, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    move-object v0, v3

    goto/16 :goto_0
.end method

.method lookupFont(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 35

    .prologue
    .line 1671
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v4, p1

    .local v4, "styleable":Ljavafx/css/Styleable;
    move-object/from16 v5, p2

    .local v5, "property":Ljava/lang/String;
    move-object/from16 v6, p3

    .local v6, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v7, p4

    .local v7, "cachedFont":Lcom/sun/javafx/css/CalculatedValue;
    const/16 v26, 0x0

    move-object/from16 v8, v26

    .line 1675
    .local v8, "origin":Ljavafx/css/StyleOrigin;
    const/16 v26, 0x0

    move/from16 v9, v26

    .line 1678
    .local v9, "distance":I
    const/16 v26, 0x0

    move/from16 v10, v26

    .line 1680
    .local v10, "foundStyle":Z
    const/16 v26, 0x0

    move-object/from16 v11, v26

    .line 1681
    .local v11, "family":Ljava/lang/String;
    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    move-wide/from16 v12, v26

    .line 1682
    .local v12, "size":D
    const/16 v26, 0x0

    move-object/from16 v14, v26

    .line 1683
    .local v14, "weight":Ljavafx/scene/text/FontWeight;
    const/16 v26, 0x0

    move-object/from16 v15, v26

    .line 1685
    .local v15, "posture":Ljavafx/scene/text/FontPosture;
    move-object/from16 v26, v7

    move-object/from16 v16, v26

    .line 1688
    .local v16, "cvFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v4

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/Node;

    move/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v26, v4

    check-cast v26, Ljavafx/scene/Node;

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object/from16 v26, v0

    :goto_0
    move-object/from16 v17, v26

    .line 1694
    .local v17, "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$300(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljavafx/css/CssMetaData;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 1695
    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$300(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljavafx/css/CssMetaData;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v26

    move-object/from16 v18, v26

    .line 1696
    .local v18, "styleableProp":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;"
    move-object/from16 v26, v18

    invoke-interface/range {v26 .. v26}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v19, v26

    .line 1697
    .local v19, "fpOrigin":Ljavafx/css/StyleOrigin;
    move-object/from16 v26, v18

    invoke-interface/range {v26 .. v26}, Ljavafx/css/StyleableProperty;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/text/Font;

    move-object/from16 v20, v26

    .line 1698
    .local v20, "font":Ljavafx/scene/text/Font;
    move-object/from16 v26, v20

    if-nez v26, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v26

    move-object/from16 v20, v26

    .line 1699
    :cond_0
    move-object/from16 v26, v19

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1700
    move-object/from16 v26, v19

    move-object/from16 v8, v26

    .line 1701
    move-object/from16 v26, v3

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontFamily(Ljavafx/scene/text/Font;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v11, v26

    .line 1702
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 1703
    move-object/from16 v26, v3

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontWeight(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;

    move-result-object v26

    move-object/from16 v14, v26

    .line 1704
    move-object/from16 v26, v3

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontPosture(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontPosture;

    move-result-object v26

    move-object/from16 v15, v26

    .line 1705
    new-instance v26, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v20

    move-object/from16 v29, v19

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v16, v26

    .line 1709
    .end local v18    # "styleableProp":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;"
    .end local v19    # "fpOrigin":Ljavafx/css/StyleOrigin;
    .end local v20    # "font":Ljavafx/scene/text/Font;
    :cond_1
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    invoke-interface/range {v27 .. v27}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getCachedFont(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v18, v26

    .line 1710
    .local v18, "parentCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v18

    if-nez v26, :cond_2

    new-instance v26, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v18, v26

    .line 1715
    :cond_2
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v19, v26

    .line 1718
    .local v19, "fontShorthand":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v19

    if-nez v26, :cond_3

    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1720
    move-object/from16 v26, v4

    if-eqz v26, :cond_c

    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v26

    :goto_1
    move-object/from16 v20, v26

    .line 1722
    .local v20, "parent":Ljavafx/css/Styleable;
    :goto_2
    move-object/from16 v26, v20

    if-eqz v26, :cond_3

    .line 1724
    move-object/from16 v26, v20

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/Node;

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v26, v20

    check-cast v26, Ljavafx/scene/Node;

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object/from16 v26, v0

    :goto_3
    move-object/from16 v21, v26

    .line 1725
    .local v21, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v26, v21

    if-eqz v26, :cond_e

    .line 1727
    add-int/lit8 v9, v9, 0x1

    .line 1729
    move-object/from16 v26, v21

    move-object/from16 v27, v20

    invoke-direct/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v26

    move-object/from16 v22, v26

    .line 1730
    .local v22, "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v26, v20

    check-cast v26, Ljavafx/scene/Node;

    move-object/from16 v0, v26

    iget-object v0, v0, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object/from16 v26, v0

    move-object/from16 v23, v26

    .line 1731
    .local v23, "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v26, v21

    move-object/from16 v27, v20

    move-object/from16 v28, v5

    move-object/from16 v29, v22

    move-object/from16 v30, v23

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v24, v26

    .line 1733
    .local v24, "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v24

    if-eqz v26, :cond_e

    .line 1735
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CascadingStyle;->getParsedValueImpl()Lcom/sun/javafx/css/ParsedValueImpl;

    move-result-object v26

    move-object/from16 v25, v26

    .line 1737
    .local v25, "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    const-string v26, "inherit"

    move-object/from16 v27, v25

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/ParsedValueImpl;->getValue()Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 1738
    move-object/from16 v26, v24

    move-object/from16 v19, v26

    .line 1751
    .end local v20    # "parent":Ljavafx/css/Styleable;
    .end local v21    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .end local v22    # "parentStyleMap":Lcom/sun/javafx/css/StyleMap;
    .end local v23    # "transitionStates":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v24    # "cascadingStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v25    # "cssValue":Lcom/sun/javafx/css/ParsedValueImpl;
    :cond_3
    move-object/from16 v26, v19

    if-eqz v26, :cond_5

    .line 1760
    move-object/from16 v26, v8

    if-eqz v26, :cond_4

    move-object/from16 v26, v8

    move-object/from16 v27, v19

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-gtz v26, :cond_5

    .line 1762
    :cond_4
    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v28, v4

    sget-object v29, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    move-object/from16 v30, v6

    move-object/from16 v31, v17

    move-object/from16 v32, v4

    move-object/from16 v33, v18

    .line 1763
    invoke-direct/range {v26 .. v33}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v20, v26

    .line 1767
    .local v20, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/text/Font;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1768
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v8, v26

    .line 1769
    move-object/from16 v26, v20

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/text/Font;

    move-object/from16 v21, v26

    .line 1770
    .local v21, "font":Ljavafx/scene/text/Font;
    move-object/from16 v26, v3

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontFamily(Ljavafx/scene/text/Font;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v11, v26

    .line 1771
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/text/Font;->getSize()D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 1772
    move-object/from16 v26, v3

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontWeight(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontWeight;

    move-result-object v26

    move-object/from16 v14, v26

    .line 1773
    move-object/from16 v26, v3

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Ljavafx/scene/CssStyleHelper;->getFontPosture(Ljavafx/scene/text/Font;)Ljavafx/scene/text/FontPosture;

    move-result-object v26

    move-object/from16 v15, v26

    .line 1774
    move-object/from16 v26, v20

    move-object/from16 v16, v26

    .line 1775
    const/16 v26, 0x1

    move/from16 v10, v26

    .line 1781
    .end local v20    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    .end local v21    # "font":Ljavafx/scene/text/Font;
    :cond_5
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-size"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v20, v26

    .line 1782
    .local v20, "fontSize":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v20

    if-eqz v26, :cond_10

    .line 1784
    move-object/from16 v26, v19

    if-eqz v26, :cond_f

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v26

    if-gez v26, :cond_f

    .line 1785
    const/16 v26, 0x0

    move-object/from16 v20, v26

    .line 1802
    :cond_6
    :goto_4
    move-object/from16 v26, v20

    if-eqz v26, :cond_a

    .line 1809
    move-object/from16 v26, v3

    move-object/from16 v27, v20

    move-object/from16 v28, v4

    sget-object v29, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    move-object/from16 v30, v6

    move-object/from16 v31, v17

    move-object/from16 v32, v4

    move-object/from16 v33, v18

    .line 1810
    invoke-direct/range {v26 .. v33}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v21, v26

    .line 1813
    .local v21, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 1814
    move-object/from16 v26, v8

    if-eqz v26, :cond_7

    move-object/from16 v26, v8

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-gtz v26, :cond_8

    .line 1816
    :cond_7
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v8, v26

    .line 1818
    :cond_8
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Double;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    move-wide/from16 v12, v26

    .line 1820
    move-object/from16 v26, v16

    if-eqz v26, :cond_12

    .line 1821
    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v26

    if-nez v26, :cond_9

    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v26

    if-eqz v26, :cond_11

    :cond_9
    const/16 v26, 0x1

    :goto_5
    move/from16 v22, v26

    .line 1822
    .local v22, "isRelative":Z
    move-object/from16 v26, v3

    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljavafx/scene/text/Font;

    move-object/from16 v28, v11

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move-wide/from16 v31, v12

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/CssStyleHelper;->deriveFont(Ljavafx/scene/text/Font;Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v26

    move-object/from16 v23, v26

    .line 1823
    .local v23, "font":Ljavafx/scene/text/Font;
    new-instance v26, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v23

    move-object/from16 v29, v8

    move/from16 v30, v22

    invoke-direct/range {v27 .. v30}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v16, v26

    .line 1829
    :goto_6
    const/16 v26, 0x1

    move/from16 v10, v26

    .line 1836
    .end local v21    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    .end local v22    # "isRelative":Z
    .end local v23    # "font":Ljavafx/scene/text/Font;
    :cond_a
    move-object/from16 v26, v7

    if-nez v26, :cond_14

    .line 1837
    move-object/from16 v26, v16

    if-eqz v26, :cond_13

    move-object/from16 v26, v16

    :goto_7
    move-object/from16 v3, v26

    .line 1959
    .end local v3    # "this":Ljavafx/scene/CssStyleHelper;
    :goto_8
    return-object v3

    .line 1688
    .end local v17    # "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .end local v18    # "parentCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    .end local v19    # "fontShorthand":Lcom/sun/javafx/css/CascadingStyle;
    .end local v20    # "fontSize":Lcom/sun/javafx/css/CascadingStyle;
    .restart local v3    # "this":Ljavafx/scene/CssStyleHelper;
    :cond_b
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljavafx/css/Styleable;->getPseudoClassStates()Ljavafx/collections/ObservableSet;

    move-result-object v26

    goto/16 :goto_0

    .line 1720
    .restart local v17    # "states":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    .restart local v18    # "parentCachedFont":Lcom/sun/javafx/css/CalculatedValue;
    .restart local v19    # "fontShorthand":Lcom/sun/javafx/css/CascadingStyle;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1724
    .local v20, "parent":Ljavafx/css/Styleable;
    :cond_d
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1745
    .local v21, "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    :cond_e
    move-object/from16 v26, v20

    invoke-interface/range {v26 .. v26}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v26

    move-object/from16 v20, v26

    .line 1747
    goto/16 :goto_2

    .line 1786
    .end local v21    # "parentStyleHelper":Ljavafx/scene/CssStyleHelper;
    .local v20, "fontSize":Lcom/sun/javafx/css/CascadingStyle;
    :cond_f
    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 1789
    sget-object v26, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v27, v20

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-lez v26, :cond_6

    .line 1790
    const/16 v26, 0x0

    move-object/from16 v20, v26

    goto/16 :goto_4

    .line 1793
    :cond_10
    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_6

    .line 1799
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-size"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move/from16 v30, v9

    move-object/from16 v31, v19

    invoke-direct/range {v26 .. v31}, Ljavafx/scene/CssStyleHelper;->lookupInheritedFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;ILcom/sun/javafx/css/CascadingStyle;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v20, v26

    goto/16 :goto_4

    .line 1821
    .local v21, "cv":Lcom/sun/javafx/css/CalculatedValue;
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 1825
    :cond_12
    move-object/from16 v26, v21

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->isRelative()Z

    move-result v26

    move/from16 v22, v26

    .line 1826
    .restart local v22    # "isRelative":Z
    move-object/from16 v26, v3

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v27

    move-object/from16 v28, v11

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move-wide/from16 v31, v12

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/CssStyleHelper;->deriveFont(Ljavafx/scene/text/Font;Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v26

    move-object/from16 v23, v26

    .line 1827
    .restart local v23    # "font":Ljavafx/scene/text/Font;
    new-instance v26, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v23

    move-object/from16 v29, v8

    move/from16 v30, v22

    invoke-direct/range {v27 .. v30}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v16, v26

    goto/16 :goto_6

    .line 1837
    .end local v21    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    .end local v22    # "isRelative":Z
    .end local v23    # "font":Ljavafx/scene/text/Font;
    :cond_13
    sget-object v26, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    goto/16 :goto_7

    .line 1840
    :cond_14
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-weight"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v21, v26

    .line 1841
    .local v21, "fontWeight":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v21

    if-eqz v26, :cond_21

    .line 1843
    move-object/from16 v26, v19

    if-eqz v26, :cond_15

    move-object/from16 v26, v19

    move-object/from16 v27, v21

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v26

    if-gez v26, :cond_15

    .line 1844
    const/16 v26, 0x0

    move-object/from16 v21, v26

    .line 1856
    :cond_15
    :goto_9
    move-object/from16 v26, v21

    if-eqz v26, :cond_18

    .line 1863
    move-object/from16 v26, v3

    move-object/from16 v27, v21

    move-object/from16 v28, v4

    sget-object v29, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    move-object/from16 v30, v6

    move-object/from16 v31, v17

    move-object/from16 v32, v4

    const/16 v33, 0x0

    .line 1864
    invoke-direct/range {v26 .. v33}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v22, v26

    .line 1867
    .local v22, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v22

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/text/FontWeight;

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 1868
    move-object/from16 v26, v8

    if-eqz v26, :cond_16

    move-object/from16 v26, v8

    move-object/from16 v27, v21

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-gtz v26, :cond_17

    .line 1869
    :cond_16
    move-object/from16 v26, v22

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v8, v26

    .line 1871
    :cond_17
    move-object/from16 v26, v22

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/text/FontWeight;

    move-object/from16 v14, v26

    .line 1872
    const/16 v26, 0x1

    move/from16 v10, v26

    .line 1877
    .end local v22    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    :cond_18
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-style"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v22, v26

    .line 1878
    .local v22, "fontStyle":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v22

    if-eqz v26, :cond_22

    .line 1880
    move-object/from16 v26, v19

    if-eqz v26, :cond_19

    move-object/from16 v26, v19

    move-object/from16 v27, v22

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v26

    if-gez v26, :cond_19

    .line 1881
    const/16 v26, 0x0

    move-object/from16 v22, v26

    .line 1893
    :cond_19
    :goto_a
    move-object/from16 v26, v22

    if-eqz v26, :cond_1c

    .line 1900
    move-object/from16 v26, v3

    move-object/from16 v27, v22

    move-object/from16 v28, v4

    sget-object v29, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    move-object/from16 v30, v6

    move-object/from16 v31, v17

    move-object/from16 v32, v4

    const/16 v33, 0x0

    .line 1901
    invoke-direct/range {v26 .. v33}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v23, v26

    .line 1904
    .local v23, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljavafx/scene/text/FontPosture;

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 1905
    move-object/from16 v26, v8

    if-eqz v26, :cond_1a

    move-object/from16 v26, v8

    move-object/from16 v27, v22

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-gtz v26, :cond_1b

    .line 1906
    :cond_1a
    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v8, v26

    .line 1908
    :cond_1b
    move-object/from16 v26, v23

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/text/FontPosture;

    move-object/from16 v15, v26

    .line 1909
    const/16 v26, 0x1

    move/from16 v10, v26

    .line 1914
    .end local v23    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    :cond_1c
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-family"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move-object/from16 v30, v17

    invoke-direct/range {v26 .. v30}, Ljavafx/scene/CssStyleHelper;->getStyle(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v23, v26

    .line 1915
    .local v23, "fontFamily":Lcom/sun/javafx/css/CascadingStyle;
    move-object/from16 v26, v23

    if-eqz v26, :cond_23

    .line 1917
    move-object/from16 v26, v19

    if-eqz v26, :cond_1d

    move-object/from16 v26, v19

    move-object/from16 v27, v23

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->compareTo(Lcom/sun/javafx/css/CascadingStyle;)I

    move-result v26

    if-gez v26, :cond_1d

    .line 1918
    const/16 v26, 0x0

    move-object/from16 v23, v26

    .line 1930
    :cond_1d
    :goto_b
    move-object/from16 v26, v23

    if-eqz v26, :cond_20

    .line 1937
    move-object/from16 v26, v3

    move-object/from16 v27, v23

    move-object/from16 v28, v4

    sget-object v29, Ljavafx/scene/CssStyleHelper;->dummyFontProperty:Ljavafx/css/CssMetaData;

    move-object/from16 v30, v6

    move-object/from16 v31, v17

    move-object/from16 v32, v4

    const/16 v33, 0x0

    .line 1938
    invoke-direct/range {v26 .. v33}, Ljavafx/scene/CssStyleHelper;->calculateValue(Lcom/sun/javafx/css/CascadingStyle;Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v26

    move-object/from16 v24, v26

    .line 1941
    .local v24, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v26, v0

    if-eqz v26, :cond_20

    .line 1942
    move-object/from16 v26, v8

    if-eqz v26, :cond_1e

    move-object/from16 v26, v8

    move-object/from16 v27, v23

    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/css/CascadingStyle;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljavafx/css/StyleOrigin;->compareTo(Ljava/lang/Enum;)I

    move-result v26

    if-gtz v26, :cond_1f

    .line 1943
    :cond_1e
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v26

    move-object/from16 v8, v26

    .line 1945
    :cond_1f
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v11, v26

    .line 1946
    const/16 v26, 0x1

    move/from16 v10, v26

    .line 1951
    .end local v24    # "cv":Lcom/sun/javafx/css/CalculatedValue;
    :cond_20
    move/from16 v26, v10

    if-eqz v26, :cond_25

    .line 1953
    move-object/from16 v26, v16

    if-eqz v26, :cond_24

    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljavafx/scene/text/Font;

    :goto_c
    move-object/from16 v24, v26

    .line 1954
    .local v24, "font":Ljavafx/scene/text/Font;
    move-object/from16 v26, v3

    move-object/from16 v27, v24

    move-object/from16 v28, v11

    move-object/from16 v29, v14

    move-object/from16 v30, v15

    move-wide/from16 v31, v12

    invoke-virtual/range {v26 .. v32}, Ljavafx/scene/CssStyleHelper;->deriveFont(Ljavafx/scene/text/Font;Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v26

    move-object/from16 v25, v26

    .line 1955
    .local v25, "derivedFont":Ljavafx/scene/text/Font;
    new-instance v26, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v25

    move-object/from16 v29, v8

    const/16 v30, 0x0

    invoke-direct/range {v27 .. v30}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v3, v26

    goto/16 :goto_8

    .line 1847
    .end local v22    # "fontStyle":Lcom/sun/javafx/css/CascadingStyle;
    .end local v23    # "fontFamily":Lcom/sun/javafx/css/CascadingStyle;
    .end local v24    # "font":Ljavafx/scene/text/Font;
    .end local v25    # "derivedFont":Ljavafx/scene/text/Font;
    :cond_21
    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_15

    .line 1853
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-weight"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move/from16 v30, v9

    move-object/from16 v31, v19

    invoke-direct/range {v26 .. v31}, Ljavafx/scene/CssStyleHelper;->lookupInheritedFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;ILcom/sun/javafx/css/CascadingStyle;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v21, v26

    goto/16 :goto_9

    .line 1884
    .restart local v22    # "fontStyle":Lcom/sun/javafx/css/CascadingStyle;
    :cond_22
    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_19

    .line 1890
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-style"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move/from16 v30, v9

    move-object/from16 v31, v19

    invoke-direct/range {v26 .. v31}, Ljavafx/scene/CssStyleHelper;->lookupInheritedFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;ILcom/sun/javafx/css/CascadingStyle;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v22, v26

    goto/16 :goto_a

    .line 1921
    .restart local v23    # "fontFamily":Lcom/sun/javafx/css/CascadingStyle;
    :cond_23
    move-object/from16 v26, v8

    sget-object v27, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1d

    .line 1927
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    const-string v29, "-family"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v6

    move/from16 v30, v9

    move-object/from16 v31, v19

    invoke-direct/range {v26 .. v31}, Ljavafx/scene/CssStyleHelper;->lookupInheritedFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;ILcom/sun/javafx/css/CascadingStyle;)Lcom/sun/javafx/css/CascadingStyle;

    move-result-object v26

    move-object/from16 v23, v26

    goto/16 :goto_b

    .line 1953
    :cond_24
    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v26

    goto/16 :goto_c

    .line 1959
    :cond_25
    sget-object v26, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v3, v26

    goto/16 :goto_8
.end method

.method pseudoClassStateChanged(Ljavafx/css/PseudoClass;)Z
    .locals 4

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper;
    move-object v1, p1

    .local v1, "pseudoClass":Ljavafx/css/PseudoClass;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/CssStyleHelper;->triggerStates:Lcom/sun/javafx/css/PseudoClassState;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/css/PseudoClassState;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/CssStyleHelper;
    return v0
.end method

.method transitionToState(Ljavafx/scene/Node;)V
    .locals 40

    .prologue
    .line 566
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/CssStyleHelper;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    .line 567
    .line 829
    :goto_0
    return-void

    .line 573
    :cond_0
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljavafx/scene/CssStyleHelper;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v32

    move-object/from16 v4, v32

    .line 574
    .local v4, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v32, v4

    if-nez v32, :cond_1

    .line 575
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    .line 576
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 577
    goto :goto_0

    .line 581
    :cond_1
    move-object/from16 v32, v4

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/StyleMap;->isEmpty()Z

    move-result v32

    move/from16 v5, v32

    .line 587
    .local v5, "inheritOnly":Z
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v32

    move-object/from16 v33, v3

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v34

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$400(Ljavafx/scene/CssStyleHelper$CacheContainer;)Lcom/sun/javafx/css/StyleCache$Key;

    move-result-object v35

    invoke-virtual/range {v32 .. v35}, Lcom/sun/javafx/css/StyleManager;->getSharedCache(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;Lcom/sun/javafx/css/StyleCache$Key;)Lcom/sun/javafx/css/StyleCache;

    move-result-object v32

    move-object/from16 v6, v32

    .line 589
    .local v6, "sharedCache":Lcom/sun/javafx/css/StyleCache;
    move-object/from16 v32, v6

    if-nez v32, :cond_2

    .line 592
    move-object/from16 v32, v2

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    .line 593
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 594
    goto :goto_0

    .line 598
    :cond_2
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-direct/range {v32 .. v33}, Ljavafx/scene/CssStyleHelper;->getTransitionStates(Ljavafx/scene/Node;)[Ljava/util/Set;

    move-result-object v32

    move-object/from16 v7, v32

    .line 600
    .local v7, "transitionStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    new-instance v32, Lcom/sun/javafx/css/StyleCacheEntry$Key;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v7

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v35

    invoke-direct/range {v33 .. v35}, Lcom/sun/javafx/css/StyleCacheEntry$Key;-><init>([Ljava/util/Set;Ljavafx/scene/text/Font;)V

    move-object/from16 v8, v32

    .line 601
    .local v8, "fontCacheKey":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v8

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v9, v32

    .line 603
    .local v9, "cachedFont":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v32, v9

    if-nez v32, :cond_5

    .line 605
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    const-string v34, "-fx-font"

    move-object/from16 v35, v4

    move-object/from16 v36, v9

    invoke-virtual/range {v32 .. v36}, Ljavafx/scene/CssStyleHelper;->lookupFont(Ljavafx/css/Styleable;Ljava/lang/String;Lcom/sun/javafx/css/StyleMap;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v32

    move-object/from16 v9, v32

    .line 607
    move-object/from16 v32, v9

    sget-object v33, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3

    move-object/from16 v32, v2

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/Node;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljavafx/scene/CssStyleHelper;->getCachedFont(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v32

    move-object/from16 v9, v32

    .line 608
    :cond_3
    move-object/from16 v32, v9

    if-nez v32, :cond_4

    new-instance v32, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v9, v32

    .line 610
    :cond_4
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 614
    :cond_5
    move-object/from16 v32, v9

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljavafx/scene/text/Font;

    move-object/from16 v10, v32

    .line 616
    .local v10, "fontForRelativeSizes":Ljavafx/scene/text/Font;
    new-instance v32, Lcom/sun/javafx/css/StyleCacheEntry$Key;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v7

    move-object/from16 v35, v10

    invoke-direct/range {v33 .. v35}, Lcom/sun/javafx/css/StyleCacheEntry$Key;-><init>([Ljava/util/Set;Ljavafx/scene/text/Font;)V

    move-object/from16 v11, v32

    .line 617
    .local v11, "cacheEntryKey":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object/from16 v32, v6

    move-object/from16 v33, v11

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/css/StyleCache;->getStyleCacheEntry(Lcom/sun/javafx/css/StyleCacheEntry$Key;)Lcom/sun/javafx/css/StyleCacheEntry;

    move-result-object v32

    move-object/from16 v12, v32

    .line 620
    .local v12, "cacheEntry":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object/from16 v32, v12

    if-eqz v32, :cond_8

    const/16 v32, 0x1

    :goto_1
    move/from16 v13, v32

    .line 622
    .local v13, "fastpath":Z
    move-object/from16 v32, v12

    if-nez v32, :cond_6

    .line 623
    new-instance v32, Lcom/sun/javafx/css/StyleCacheEntry;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/css/StyleCacheEntry;-><init>()V

    move-object/from16 v12, v32

    .line 624
    move-object/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/css/StyleCache;->addStyleCacheEntry(Lcom/sun/javafx/css/StyleCacheEntry$Key;Lcom/sun/javafx/css/StyleCacheEntry;)V

    .line 627
    :cond_6
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->getCssMetaData()Ljava/util/List;

    move-result-object v32

    move-object/from16 v14, v32

    .line 630
    .local v14, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object/from16 v32, v14

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v15, v32

    .line 632
    .local v15, "max":I
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$100(Ljavafx/scene/CssStyleHelper$CacheContainer;)Z

    move-result v32

    move/from16 v16, v32

    .line 633
    .local v16, "isForceSlowpath":Z
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$102(Ljavafx/scene/CssStyleHelper$CacheContainer;Z)Z

    move-result v32

    .line 636
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 640
    const/16 v32, 0x0

    move/from16 v17, v32

    .local v17, "n":I
    :goto_2
    move/from16 v32, v17

    move/from16 v33, v15

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_21

    .line 643
    move-object/from16 v32, v14

    move/from16 v33, v17

    .line 644
    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljavafx/css/CssMetaData;

    move-object/from16 v18, v32

    .line 647
    .local v18, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    move/from16 v32, v5

    if-eqz v32, :cond_9

    move-object/from16 v32, v18

    invoke-virtual/range {v32 .. v32}, Ljavafx/css/CssMetaData;->isInherits()Z

    move-result v32

    if-nez v32, :cond_9

    .line 648
    .line 640
    :cond_7
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 620
    .end local v13    # "fastpath":Z
    .end local v14    # "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    .end local v15    # "max":I
    .end local v16    # "isForceSlowpath":Z
    .end local v17    # "n":I
    .end local v18    # "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    :cond_8
    const/16 v32, 0x0

    goto :goto_1

    .line 653
    .restart local v13    # "fastpath":Z
    .restart local v14    # "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    .restart local v15    # "max":I
    .restart local v16    # "isForceSlowpath":Z
    .restart local v17    # "n":I
    .restart local v18    # "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v32, v18

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Ljavafx/css/CssMetaData;->isSettable(Ljavafx/css/Styleable;)Z

    move-result v32

    if-nez v32, :cond_a

    goto :goto_3

    .line 655
    :cond_a
    move-object/from16 v32, v18

    invoke-virtual/range {v32 .. v32}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v19, v32

    .line 657
    .local v19, "property":Ljava/lang/String;
    move-object/from16 v32, v12

    move-object/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/css/StyleCacheEntry;->get(Ljava/lang/String;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v32

    move-object/from16 v20, v32

    .line 661
    .local v20, "calculatedValue":Lcom/sun/javafx/css/CalculatedValue;
    move/from16 v32, v13

    if-eqz v32, :cond_d

    move-object/from16 v32, v20

    if-nez v32, :cond_d

    move/from16 v32, v16

    if-eqz v32, :cond_d

    const/16 v32, 0x1

    :goto_4
    move/from16 v21, v32

    .line 664
    .local v21, "forceSlowpath":Z
    move/from16 v32, v13

    if-nez v32, :cond_b

    move-object/from16 v32, v20

    if-eqz v32, :cond_c

    :cond_b
    move/from16 v32, v21

    if-eqz v32, :cond_e

    :cond_c
    const/16 v32, 0x1

    :goto_5
    move/from16 v22, v32

    .line 667
    .local v22, "addToCache":Z
    move/from16 v32, v13

    if-eqz v32, :cond_f

    move/from16 v32, v21

    if-nez v32, :cond_f

    .line 671
    move-object/from16 v32, v20

    sget-object v33, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 672
    goto :goto_3

    .line 661
    .end local v21    # "forceSlowpath":Z
    .end local v22    # "addToCache":Z
    :cond_d
    const/16 v32, 0x0

    goto :goto_4

    .line 664
    .restart local v21    # "forceSlowpath":Z
    :cond_e
    const/16 v32, 0x0

    goto :goto_5

    .line 675
    .restart local v22    # "addToCache":Z
    :cond_f
    move-object/from16 v32, v20

    if-nez v32, :cond_10

    .line 678
    move-object/from16 v32, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v18

    move-object/from16 v35, v4

    move-object/from16 v36, v7

    const/16 v37, 0x0

    aget-object v36, v36, v37

    move-object/from16 v37, v3

    move-object/from16 v38, v9

    invoke-direct/range {v32 .. v38}, Ljavafx/scene/CssStyleHelper;->lookup(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;Lcom/sun/javafx/css/StyleMap;Ljava/util/Set;Ljavafx/css/Styleable;Lcom/sun/javafx/css/CalculatedValue;)Lcom/sun/javafx/css/CalculatedValue;

    move-result-object v32

    move-object/from16 v20, v32

    .line 682
    move-object/from16 v32, v20

    if-nez v32, :cond_10

    .line 683
    sget-boolean v32, Ljavafx/scene/CssStyleHelper;->$assertionsDisabled:Z

    if-nez v32, :cond_7

    new-instance v32, Ljava/lang/AssertionError;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "lookup returned null for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v35, v19

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v32

    .line 700
    :cond_10
    move-object/from16 v32, v20

    if-eqz v32, :cond_11

    move-object/from16 v32, v20

    :try_start_0
    sget-object v33, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 708
    :cond_11
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v18

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v23, v32

    .line 714
    .local v23, "initialValue":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v32, v23

    if-eqz v32, :cond_12

    .line 716
    move-object/from16 v32, v18

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v32

    move-object/from16 v24, v32

    .line 717
    .local v24, "styleableProperty":Ljavafx/css/StyleableProperty;
    move-object/from16 v32, v24

    invoke-interface/range {v32 .. v32}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v32

    sget-object v33, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_12

    .line 718
    move-object/from16 v32, v24

    move-object/from16 v33, v23

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v33

    move-object/from16 v34, v23

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 722
    .end local v24    # "styleableProperty":Ljavafx/css/StyleableProperty;
    :cond_12
    goto/16 :goto_3

    .line 726
    .end local v23    # "initialValue":Lcom/sun/javafx/css/CalculatedValue;
    :cond_13
    move/from16 v32, v22

    if-eqz v32, :cond_14

    .line 730
    move-object/from16 v32, v12

    move-object/from16 v33, v19

    move-object/from16 v34, v20

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/css/StyleCacheEntry;->put(Ljava/lang/String;Lcom/sun/javafx/css/CalculatedValue;)V

    .line 733
    :cond_14
    move-object/from16 v32, v18

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v32

    move-object/from16 v23, v32

    .line 736
    .local v23, "styleableProperty":Ljavafx/css/StyleableProperty;
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Ljavafx/css/StyleableProperty;->getStyleOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v32

    move-object/from16 v24, v32

    .line 745
    .local v24, "originOfCurrentValue":Ljavafx/css/StyleOrigin;
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v32

    move-object/from16 v25, v32

    .line 749
    .local v25, "originOfCalculatedValue":Ljavafx/css/StyleOrigin;
    move-object/from16 v32, v25

    if-nez v32, :cond_19

    .line 750
    sget-boolean v32, Ljavafx/scene/CssStyleHelper;->$assertionsDisabled:Z

    if-nez v32, :cond_18

    new-instance v32, Ljava/lang/AssertionError;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v23

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v32
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v23    # "styleableProperty":Ljavafx/css/StyleableProperty;
    .end local v24    # "originOfCurrentValue":Ljavafx/css/StyleOrigin;
    .end local v25    # "originOfCalculatedValue":Ljavafx/css/StyleOrigin;
    :catch_0
    move-exception v32

    move-object/from16 v23, v32

    .line 786
    .local v23, "e":Ljava/lang/Exception;
    move-object/from16 v32, v18

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Ljavafx/css/CssMetaData;->getStyleableProperty(Ljavafx/css/Styleable;)Ljavafx/css/StyleableProperty;

    move-result-object v32

    move-object/from16 v24, v32

    .line 788
    .local v24, "styleableProperty":Ljavafx/css/StyleableProperty;
    const-string v32, "Failed to set css [%s] on [%s] due to \'%s\'\n"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x0

    move-object/from16 v36, v18

    .line 789
    invoke-virtual/range {v36 .. v36}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x1

    move-object/from16 v36, v24

    aput-object v36, v34, v35

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    const/16 v35, 0x2

    move-object/from16 v36, v23

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    .line 788
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v25, v32

    .line 791
    .local v25, "msg":Ljava/lang/String;
    const/16 v32, 0x0

    move-object/from16 v26, v32

    .line 792
    .local v26, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v32

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v26, v33

    if-eqz v32, :cond_15

    .line 793
    new-instance v32, Lcom/sun/javafx/css/CssError$PropertySetError;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v18

    move-object/from16 v35, v3

    move-object/from16 v36, v25

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/css/CssError$PropertySetError;-><init>(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;Ljava/lang/String;)V

    move-object/from16 v27, v32

    .line 794
    .local v27, "error":Lcom/sun/javafx/css/CssError;
    move-object/from16 v32, v26

    move-object/from16 v33, v27

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v32

    .line 797
    .end local v27    # "error":Lcom/sun/javafx/css/CssError;
    :cond_15
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v32

    move-object/from16 v27, v32

    .line 798
    .local v27, "logger":Lsun/util/logging/PlatformLogger;
    move-object/from16 v32, v27

    sget-object v33, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 799
    move-object/from16 v32, v27

    move-object/from16 v33, v25

    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 804
    :cond_16
    move-object/from16 v32, v12

    move-object/from16 v33, v19

    sget-object v34, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    invoke-virtual/range {v32 .. v34}, Lcom/sun/javafx/css/StyleCacheEntry;->put(Ljava/lang/String;Lcom/sun/javafx/css/CalculatedValue;)V

    .line 806
    const/16 v32, 0x0

    move-object/from16 v28, v32

    .line 807
    .local v28, "cachedValue":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    if-eqz v32, :cond_17

    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    if-eqz v32, :cond_17

    .line 808
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v18

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v28, v32

    .line 810
    :cond_17
    move-object/from16 v32, v28

    if-eqz v32, :cond_1f

    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v32

    :goto_6
    move-object/from16 v29, v32

    .line 811
    .local v29, "value":Ljava/lang/Object;
    move-object/from16 v32, v28

    if-eqz v32, :cond_20

    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/CalculatedValue;->getOrigin()Ljavafx/css/StyleOrigin;

    move-result-object v32

    :goto_7
    move-object/from16 v30, v32

    .line 813
    .local v30, "origin":Ljavafx/css/StyleOrigin;
    move-object/from16 v32, v24

    move-object/from16 v33, v30

    move-object/from16 v34, v29

    :try_start_1
    invoke-interface/range {v32 .. v34}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 820
    goto/16 :goto_3

    .line 751
    .end local v26    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    .end local v27    # "logger":Lsun/util/logging/PlatformLogger;
    .end local v28    # "cachedValue":Lcom/sun/javafx/css/CalculatedValue;
    .end local v29    # "value":Ljava/lang/Object;
    .end local v30    # "origin":Ljavafx/css/StyleOrigin;
    .local v23, "styleableProperty":Ljavafx/css/StyleableProperty;
    .local v24, "originOfCurrentValue":Ljavafx/css/StyleOrigin;
    .local v25, "originOfCalculatedValue":Ljavafx/css/StyleOrigin;
    :cond_18
    goto/16 :goto_3

    .line 754
    :cond_19
    move-object/from16 v32, v24

    :try_start_2
    sget-object v33, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1a

    .line 755
    move-object/from16 v32, v25

    sget-object v33, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1a

    .line 756
    goto/16 :goto_3

    .line 760
    :cond_1a
    move-object/from16 v32, v20

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/css/CalculatedValue;->getValue()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v26, v32

    .line 761
    .local v26, "value":Ljava/lang/Object;
    move-object/from16 v32, v23

    invoke-interface/range {v32 .. v32}, Ljavafx/css/StyleableProperty;->getValue()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v27, v32

    .line 764
    .local v27, "currentValue":Ljava/lang/Object;
    move-object/from16 v32, v24

    move-object/from16 v33, v25

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_1b

    move-object/from16 v32, v27

    if-eqz v32, :cond_1e

    move-object/from16 v32, v27

    move-object/from16 v33, v26

    .line 766
    invoke-virtual/range {v32 .. v33}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1d

    .line 769
    :cond_1b
    :goto_8
    sget-object v32, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    sget-object v33, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 770
    sget-object v32, Ljavafx/scene/CssStyleHelper;->LOGGER:Lsun/util/logging/PlatformLogger;

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v39, v33

    move-object/from16 v33, v39

    move-object/from16 v34, v39

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v19

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", call applyStyle: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v23

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", value ="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v26

    .line 771
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", originOfCalculatedValue="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 770
    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 774
    :cond_1c
    move-object/from16 v32, v23

    move-object/from16 v33, v25

    move-object/from16 v34, v26

    invoke-interface/range {v32 .. v34}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 776
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v18

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1d

    .line 778
    new-instance v32, Lcom/sun/javafx/css/CalculatedValue;

    move-object/from16 v39, v32

    move-object/from16 v32, v39

    move-object/from16 v33, v39

    move-object/from16 v34, v27

    move-object/from16 v35, v24

    const/16 v36, 0x0

    invoke-direct/range {v33 .. v36}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    move-object/from16 v28, v32

    .line 779
    .local v28, "initialValue":Lcom/sun/javafx/css/CalculatedValue;
    move-object/from16 v32, v2

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/CssStyleHelper;->cacheContainer:Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/CssStyleHelper$CacheContainer;->access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;

    move-result-object v32

    move-object/from16 v33, v18

    move-object/from16 v34, v28

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v32

    .line 822
    .end local v28    # "initialValue":Lcom/sun/javafx/css/CalculatedValue;
    :cond_1d
    goto/16 :goto_3

    .line 766
    :cond_1e
    move-object/from16 v32, v26

    if-eqz v32, :cond_1d

    goto/16 :goto_8

    .line 810
    .local v23, "e":Ljava/lang/Exception;
    .local v24, "styleableProperty":Ljavafx/css/StyleableProperty;
    .local v25, "msg":Ljava/lang/String;
    .local v26, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    .local v27, "logger":Lsun/util/logging/PlatformLogger;
    .local v28, "cachedValue":Lcom/sun/javafx/css/CalculatedValue;
    :cond_1f
    move-object/from16 v32, v18

    move-object/from16 v33, v3

    invoke-virtual/range {v32 .. v33}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v32

    goto/16 :goto_6

    .line 811
    .restart local v29    # "value":Ljava/lang/Object;
    :cond_20
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 814
    .restart local v30    # "origin":Ljavafx/css/StyleOrigin;
    :catch_1
    move-exception v32

    move-object/from16 v31, v32

    .line 816
    .local v31, "ebad":Ljava/lang/Exception;
    move-object/from16 v32, v27

    sget-object v33, Lsun/util/logging/PlatformLogger$Level;->SEVERE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 817
    move-object/from16 v32, v27

    const-string v33, "Could not reset [%s] on [%s] due to %s\n"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x0

    move-object/from16 v37, v18

    .line 818
    invoke-virtual/range {v37 .. v37}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x1

    move-object/from16 v37, v24

    aput-object v37, v35, v36

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    const/16 v36, 0x2

    move-object/from16 v37, v23

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    .line 817
    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 827
    .end local v18    # "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljava/lang/Object;>;"
    .end local v19    # "property":Ljava/lang/String;
    .end local v20    # "calculatedValue":Lcom/sun/javafx/css/CalculatedValue;
    .end local v21    # "forceSlowpath":Z
    .end local v22    # "addToCache":Z
    .end local v23    # "e":Ljava/lang/Exception;
    .end local v24    # "styleableProperty":Ljavafx/css/StyleableProperty;
    .end local v25    # "msg":Ljava/lang/String;
    .end local v26    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    .end local v27    # "logger":Lsun/util/logging/PlatformLogger;
    .end local v28    # "cachedValue":Lcom/sun/javafx/css/CalculatedValue;
    .end local v29    # "value":Ljava/lang/Object;
    .end local v30    # "origin":Ljavafx/css/StyleOrigin;
    .end local v31    # "ebad":Ljava/lang/Exception;
    :cond_21
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 829
    goto/16 :goto_0
.end method
