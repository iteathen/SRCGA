.class public Ljavafx/css/StyleablePropertyFactory;
.super Ljava/lang/Object;
.source "StyleablePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Ljavafx/css/Styleable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final metaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field

.field private final metaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Pair",
            "<",
            "Ljava/lang/Class;",
            "Ljavafx/css/CssMetaData",
            "<TS;*>;>;>;"
        }
    .end annotation
.end field

.field private final unmodifiableMetaDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "parentCssMetaData":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 181
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/css/StyleablePropertyFactory;->metaDataList:Ljava/util/List;

    .line 182
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/css/StyleablePropertyFactory;->metaDataList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Ljavafx/css/StyleablePropertyFactory;->unmodifiableMetaDataList:Ljava/util/List;

    .line 183
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/css/StyleablePropertyFactory;->metaDataList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 184
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ljavafx/css/StyleablePropertyFactory;->metaDataMap:Ljava/util/Map;

    .line 185
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/function/Function;ZZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->lambda$createBooleanCssMetaData$486(Ljava/util/function/Function;ZZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createColorCssMetaData$487(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$10(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createUrlCssMetaData$496(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createDurationCssMetaData$488(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createEffectCssMetaData$489(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Ljavafx/css/StyleablePropertyFactory;->lambda$createEnumCssMetaData$490(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method static synthetic access$lambda$5(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createFontCssMetaData$491(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createInsetsCssMetaData$492(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$7(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createPaintCssMetaData$493(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$8(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createSizeCssMetaData$494(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method static synthetic access$lambda$9(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->lambda$createStringCssMetaData$495(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1830
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "ofClass":Ljava/lang/Class;
    move-object v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method private getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/css/CssMetaData",
            "<TS;*>;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 1835
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "ofClass":Ljava/lang/Class;
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "createFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljavafx/css/CssMetaData<TS;*>;>;"
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 1837
    .local v4, "key":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/css/StyleablePropertyFactory;->metaDataMap:Ljava/util/Map;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/util/Pair;

    move-object v5, v7

    .line 1838
    .local v5, "entry":Ljavafx/util/Pair;, "Ljavafx/util/Pair<Ljava/lang/Class;Ljavafx/css/CssMetaData<TS;*>;>;"
    move-object v7, v5

    if-eqz v7, :cond_1

    .line 1839
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 1840
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/css/CssMetaData;

    move-object v0, v7

    .line 1852
    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    :goto_0
    return-object v0

    .line 1842
    .restart local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    :cond_0
    new-instance v7, Ljava/lang/ClassCastException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CssMetaData value is not "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1844
    :cond_1
    move-object v7, v3

    if-nez v7, :cond_2

    .line 1845
    new-instance v7, Ljava/util/NoSuchElementException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No CssMetaData for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1849
    :cond_2
    move-object v7, v3

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/css/CssMetaData;

    move-object v6, v7

    .line 1850
    .local v6, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;*>;"
    move-object v7, v0

    iget-object v7, v7, Ljavafx/css/StyleablePropertyFactory;->metaDataMap:Ljava/util/Map;

    move-object v8, v4

    new-instance v9, Ljavafx/util/Pair;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljavafx/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1851
    move-object v7, v0

    iget-object v7, v7, Ljavafx/css/StyleablePropertyFactory;->metaDataList:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1852
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method private static synthetic lambda$createBooleanCssMetaData$486(Ljava/util/function/Function;ZZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 13

    .prologue
    .line 1167
    move-object v0, p0

    .local v0, "function":Ljava/util/function/Function;
    move v1, p1

    .local v1, "initialValue":Z
    move v2, p2

    .local v2, "inherits":Z
    move-object/from16 v3, p3

    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getBooleanConverter()Ljavafx/css/StyleConverter;

    move-result-object v5

    move-object v4, v5

    .line 1168
    .local v4, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v5, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    move-object v8, v0

    move-object v9, v4

    move v10, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move v11, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v5

    .end local v0    # "function":Ljava/util/function/Function;
    return-object v0
.end method

.method private static synthetic lambda$createColorCssMetaData$487(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1226
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/scene/paint/Color;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getColorConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1227
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<Ljava/lang/String;Ljavafx/scene/paint/Color;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createDurationCssMetaData$488(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/util/Duration;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getDurationConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1286
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljavafx/util/Duration;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createEffectCssMetaData$489(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1344
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/scene/effect/Effect;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getEffectConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1345
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<[Ljavafx/css/ParsedValue;Ljavafx/scene/effect/Effect;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createEnumCssMetaData$490(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 15

    .prologue
    .line 1401
    move-object v0, p0

    .local v0, "enumClass":Ljava/lang/Class;
    move-object/from16 v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/lang/Enum;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object/from16 v5, p5

    .local v5, "key":Ljava/lang/String;
    new-instance v7, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    move-object v6, v7

    .line 1402
    .local v6, "converter":Lcom/sun/javafx/css/converters/EnumConverter;, "Lcom/sun/javafx/css/converters/EnumConverter<TE;>;"
    new-instance v7, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    move-object v12, v3

    move v13, v4

    invoke-direct/range {v8 .. v13}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v7

    .end local v0    # "enumClass":Ljava/lang/Class;
    return-object v0
.end method

.method private static synthetic lambda$createFontCssMetaData$491(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1458
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/scene/text/Font;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getFontConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1459
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<[Ljavafx/css/ParsedValue;Ljavafx/scene/text/Font;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createInsetsCssMetaData$492(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1515
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/geometry/Insets;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getInsetsConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1516
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<[Ljavafx/css/ParsedValue;Ljavafx/geometry/Insets;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createPaintCssMetaData$493(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1574
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljavafx/scene/paint/Paint;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getPaintConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1575
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<Ljavafx/css/ParsedValue<*Ljavafx/scene/paint/Paint;>;Ljavafx/scene/paint/Paint;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createSizeCssMetaData$494(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1631
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljava/lang/Number;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getSizeConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1632
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<*Ljava/lang/Number;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createStringCssMetaData$495(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1688
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getStringConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1689
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$createUrlCssMetaData$496(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;ZLjava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 14

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "property":Ljava/lang/String;
    move-object v1, p1

    .local v1, "function":Ljava/util/function/Function;
    move-object/from16 v2, p2

    .local v2, "initialValue":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "inherits":Z
    move-object/from16 v4, p4

    .local v4, "key":Ljava/lang/String;
    invoke-static {}, Ljavafx/css/StyleConverter;->getUrlConverter()Ljavafx/css/StyleConverter;

    move-result-object v6

    move-object v5, v6

    .line 1748
    .local v5, "converter":Ljavafx/css/StyleConverter;, "Ljavafx/css/StyleConverter<[Ljavafx/css/ParsedValue;Ljava/lang/String;>;"
    new-instance v6, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v7 .. v12}, Ljavafx/css/StyleablePropertyFactory$SimpleCssMetaData;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/css/StyleConverter;Ljava/lang/Object;Z)V

    move-object v0, v6

    .end local v0    # "property":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method clearDataForTesting()V
    .locals 2

    .prologue
    .line 1825
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleablePropertyFactory;->metaDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1826
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleablePropertyFactory;->metaDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1827
    return-void
.end method

.method public final createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Z)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move v3, p3

    .local v3, "initialValue":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/CssMetaData;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;ZZ)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move/from16 v3, p3

    .local v3, "initialValue":Z
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1157
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1160
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1161
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1165
    :cond_2
    move-object v6, v0

    const-class v7, Ljava/lang/Boolean;

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    invoke-static {v9, v10, v11}, Ljavafx/css/StyleablePropertyFactory$$Lambda$1;->lambdaFactory$(Ljava/util/function/Function;ZZ)Ljava/util/function/Function;

    move-result-object v9

    .line 1166
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1170
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Boolean;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;",
            "Ljavafx/scene/paint/Color;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/paint/Color;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;",
            "Ljavafx/scene/paint/Color;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1215
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/scene/paint/Color;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1216
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1219
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1220
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1224
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/scene/paint/Color;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$2;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1225
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1229
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Color;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;",
            "Ljavafx/util/Duration;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/util/Duration;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;",
            "Ljavafx/util/Duration;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/util/Duration;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1275
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1278
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1279
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1283
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/util/Duration;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$3;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1284
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1288
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/util/Duration;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1370
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1359
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/effect/Effect;, "TE;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1333
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/scene/effect/Effect;, "TE;"
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1334
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1337
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1338
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1342
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/scene/effect/Effect;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$4;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1343
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1347
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TE;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1427
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    move-object v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object v3, p3

    .local v3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Ljavafx/css/StyleablePropertyFactory;->createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;)Ljavafx/css/CssMetaData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    move-object v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object v3, p3

    .local v3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object v4, p4

    .local v4, "initialValue":Ljava/lang/Enum;, "TE;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Ljavafx/css/StyleablePropertyFactory;->createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljavafx/css/CssMetaData;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 1390
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    move-object/from16 v2, p2

    .local v2, "property":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v4, p4

    .local v4, "initialValue":Ljava/lang/Enum;, "TE;"
    move/from16 v5, p5

    .local v5, "inherits":Z
    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1391
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "property cannot be null or empty string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1394
    :cond_1
    move-object v7, v3

    if-nez v7, :cond_2

    .line 1395
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string v9, "function cannot be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1399
    :cond_2
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move v14, v5

    invoke-static {v10, v11, v12, v13, v14}, Ljavafx/css/StyleablePropertyFactory$$Lambda$5;->lambdaFactory$(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljava/util/function/Function;

    move-result-object v10

    .line 1400
    invoke-direct {v7, v8, v9, v10}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v7

    move-object v6, v7

    .line 1404
    .local v6, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TE;>;"
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1484
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1473
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/text/Font;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;",
            "Ljavafx/scene/text/Font;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1447
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/scene/text/Font;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1448
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1451
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1452
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1456
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/scene/text/Font;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$6;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1457
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1461
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/Font;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;",
            "Ljavafx/geometry/Insets;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/geometry/Insets;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;",
            "Ljavafx/geometry/Insets;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1504
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/geometry/Insets;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1505
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1508
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1509
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1513
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/geometry/Insets;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$7;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1514
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1518
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/geometry/Insets;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1600
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;",
            "Ljavafx/scene/paint/Paint;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1589
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljavafx/scene/paint/Paint;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;",
            "Ljavafx/scene/paint/Paint;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1563
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljavafx/scene/paint/Paint;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1564
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1567
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1568
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1572
    :cond_2
    move-object v6, v0

    const-class v7, Ljavafx/scene/paint/Paint;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$8;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1573
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1577
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Paint;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1657
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/Number;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/Number;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/Number;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1620
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/lang/Number;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1621
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1624
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1625
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1629
    :cond_2
    move-object v6, v0

    const-class v7, Ljava/lang/Number;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$9;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1630
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1634
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Number;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1703
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1677
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1678
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1681
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1682
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1686
    :cond_2
    move-object v6, v0

    const-class v7, Ljava/lang/String;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$10;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1687
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1691
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    :cond_1
    move-object v5, v0

    const-class v6, Ljava/lang/Boolean;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 275
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Boolean;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableBooleanProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableBooleanProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Z)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move/from16 v5, p5

    .local v5, "initialValue":Z
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableBooleanProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;ZZ)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;>;"
    move/from16 v5, p5

    .local v5, "initialValue":Z
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createBooleanCssMetaData(Ljava/lang/String;Ljava/util/function/Function;ZZ)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 221
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Boolean;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableBooleanProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableBooleanProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 356
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/scene/paint/Color;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 357
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Color;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    sget-object v10, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;",
            "Ljavafx/scene/paint/Color;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/paint/Color;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableColorProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;>;",
            "Ljavafx/scene/paint/Color;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Color;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/paint/Color;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createColorCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Color;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 302
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Color;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/util/Duration;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 439
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/util/Duration;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    sget-object v10, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;",
            "Ljavafx/util/Duration;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/util/Duration;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableDurationProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;>;",
            "Ljavafx/util/Duration;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/util/Duration;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/util/Duration;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createDurationCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/util/Duration;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 384
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/util/Duration;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 519
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/scene/effect/Effect;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 520
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/effect/Effect;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljavafx/css/StyleableProperty;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 639
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "cssProperty cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 643
    :cond_1
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 644
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TE;>;"
    new-instance v6, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    move-object v11, v5

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/effect/Effect;, "TE;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEffectProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljavafx/scene/effect/Effect;",
            ">(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;TE;Z)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/effect/Effect;, "TE;"
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createEffectCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/effect/Effect;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 466
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TE;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEnumProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Class;)Ljavafx/css/StyleableProperty;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v5, p5

    .local v5, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Ljavafx/css/StyleablePropertyFactory;->createStyleableEnumProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Class;Ljava/lang/Enum;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEnumProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Class;Ljava/lang/Enum;)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;",
            "Ljava/lang/Class",
            "<TE;>;TE;)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v5, p5

    .local v5, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object/from16 v6, p6

    .local v6, "initialValue":Ljava/lang/Enum;, "TE;"
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Ljavafx/css/StyleablePropertyFactory;->createStyleableEnumProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Class;Ljava/lang/Enum;Z)Ljavafx/css/StyleableProperty;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableEnumProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Class;Ljava/lang/Enum;Z)Ljavafx/css/StyleableProperty;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;>;",
            "Ljava/lang/Class",
            "<TE;>;TE;Z)",
            "Ljavafx/css/StyleableProperty",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 561
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<TE;>;>;"
    move-object/from16 v5, p5

    .local v5, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    move-object/from16 v6, p6

    .local v6, "initialValue":Ljava/lang/Enum;, "TE;"
    move/from16 v7, p7

    .local v7, "inherits":Z
    move-object v9, v0

    move-object v10, v5

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move v14, v7

    invoke-virtual/range {v9 .. v14}, Ljavafx/css/StyleablePropertyFactory;->createEnumCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;Z)Ljavafx/css/CssMetaData;

    move-result-object v9

    move-object v8, v9

    .line 562
    .local v8, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;TE;>;"
    new-instance v9, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v8

    move-object v12, v1

    move-object v13, v2

    move-object v14, v6

    invoke-direct {v10, v11, v12, v13, v14}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v9

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 721
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/scene/text/Font;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 726
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/Font;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;",
            "Ljavafx/scene/text/Font;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/text/Font;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableFontProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;>;",
            "Ljavafx/scene/text/Font;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/text/Font;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/text/Font;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createFontCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/text/Font;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 671
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/text/Font;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 802
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 806
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/geometry/Insets;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 807
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/geometry/Insets;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    sget-object v10, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;",
            "Ljavafx/geometry/Insets;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/geometry/Insets;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableInsetsProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;>;",
            "Ljavafx/geometry/Insets;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/geometry/Insets;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/geometry/Insets;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createInsetsCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/geometry/Insets;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 753
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/geometry/Insets;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 964
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 968
    :cond_1
    move-object v5, v0

    const-class v6, Ljava/lang/Number;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 969
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Number;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/Number;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/Number;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableNumberProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;>;",
            "Ljava/lang/Number;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/Number;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/Number;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createSizeCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Number;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 915
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/Number;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 883
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 887
    :cond_1
    move-object v5, v0

    const-class v6, Ljavafx/scene/paint/Paint;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 888
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Paint;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    sget-object v10, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;",
            "Ljavafx/scene/paint/Paint;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/paint/Paint;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleablePaintProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;>;",
            "Ljavafx/scene/paint/Paint;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljavafx/scene/paint/Paint;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljavafx/scene/paint/Paint;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createPaintCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljavafx/scene/paint/Paint;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 834
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljavafx/scene/paint/Paint;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableObjectProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableObjectProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1045
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1049
    :cond_1
    move-object v5, v0

    const-class v6, Ljava/lang/String;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 1050
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableStringProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableStringProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableStringProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createStringCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 996
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableStringProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableStringProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1131
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "cssProperty cannot be null or empty string"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1135
    :cond_1
    move-object v5, v0

    const-class v6, Ljava/lang/String;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;)Ljavafx/css/CssMetaData;

    move-result-object v5

    move-object v4, v5

    .line 1136
    .local v4, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    new-instance v5, Ljavafx/css/SimpleStyleableStringProperty;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavafx/css/CssMetaData;->getInitialValue(Ljavafx/css/Styleable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/css/SimpleStyleableStringProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/StyleableProperty;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/css/StyleablePropertyFactory;->createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Ljavafx/css/StyleableProperty;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Ljavafx/css/StyleablePropertyFactory;->createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createStyleableUrlProperty(Ljavafx/css/Styleable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/StyleableProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1077
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object/from16 v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;, "TS;"
    move-object/from16 v2, p2

    .local v2, "propertyName":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cssProperty":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v5, p5

    .local v5, "initialValue":Ljava/lang/String;
    move/from16 v6, p6

    .local v6, "inherits":Z
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    invoke-virtual {v8, v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory;->createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v8

    move-object v7, v8

    .line 1078
    .local v7, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    new-instance v8, Ljavafx/css/SimpleStyleableStringProperty;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v7

    move-object v11, v1

    move-object v12, v2

    move-object v13, v5

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/css/SimpleStyleableStringProperty;-><init>(Ljavafx/css/CssMetaData;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1777
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/css/StyleablePropertyFactory;->createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;)Ljavafx/css/CssMetaData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1764
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object v3, p3

    .local v3, "initialValue":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/css/StyleablePropertyFactory;->createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final createUrlCssMetaData(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljavafx/css/CssMetaData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function",
            "<TS;",
            "Ljavafx/css/StyleableProperty",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljavafx/css/CssMetaData",
            "<TS;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1736
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TS;Ljavafx/css/StyleableProperty<Ljava/lang/String;>;>;"
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "inherits":Z
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1737
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "property cannot be null or empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1740
    :cond_1
    move-object v6, v2

    if-nez v6, :cond_2

    .line 1741
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const-string v8, "function cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1745
    :cond_2
    move-object v6, v0

    const-class v7, Ljava/net/URL;

    move-object v8, v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Ljavafx/css/StyleablePropertyFactory$$Lambda$11;->lambdaFactory$(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/String;Z)Ljava/util/function/Function;

    move-result-object v9

    .line 1746
    invoke-direct {v6, v7, v8, v9}, Ljavafx/css/StyleablePropertyFactory;->getCssMetaData(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;)Ljavafx/css/CssMetaData;

    move-result-object v6

    move-object v5, v6

    .line 1750
    .local v5, "cssMetaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<TS;Ljava/lang/String;>;"
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method

.method public final getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleablePropertyFactory;->unmodifiableMetaDataList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/StyleablePropertyFactory;, "Ljavafx/css/StyleablePropertyFactory<TS;>;"
    return-object v0
.end method
