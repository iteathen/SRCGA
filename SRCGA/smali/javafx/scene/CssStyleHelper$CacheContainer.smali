.class final Ljavafx/scene/CssStyleHelper$CacheContainer;
.super Ljava/lang/Object;
.source "CssStyleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/CssStyleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheContainer"
.end annotation


# instance fields
.field private final cssSetProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/CssMetaData;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ">;"
        }
    .end annotation
.end field

.field private final fontProp:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/css/Styleable;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final fontSizeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleCacheEntry$Key;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ">;"
        }
    .end annotation
.end field

.field private forceSlowpath:Z

.field private final smapId:I

.field private final styleCacheKey:Lcom/sun/javafx/css/StyleCache$Key;


# direct methods
.method private constructor <init>(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;I)V
    .locals 21

    .prologue
    .line 345
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p2

    .local v4, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move/from16 v5, p3

    .local v5, "depth":I
    move-object v14, v2

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 431
    move-object v14, v2

    const/4 v15, 0x0

    iput-boolean v15, v14, Ljavafx/scene/CssStyleHelper$CacheContainer;->forceSlowpath:Z

    .line 347
    const/4 v14, 0x0

    move v6, v14

    .line 348
    .local v6, "ctr":I
    move v14, v5

    new-array v14, v14, [I

    move-object v7, v14

    .line 349
    .local v7, "smapIds":[I
    move-object v14, v7

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/StyleMap;->getId()I

    move-result v17

    move-object/from16 v19, v16

    move/from16 v20, v17

    move/from16 v16, v20

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->smapId:I

    aput v16, v14, v15

    .line 360
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/Node;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v14

    move-object v8, v14

    .line 361
    .local v8, "parent":Ljavafx/css/Styleable;
    const/4 v14, 0x1

    move v9, v14

    .local v9, "d":I
    :goto_0
    move v14, v9

    move v15, v5

    if-ge v14, v15, :cond_1

    .line 364
    move-object v14, v8

    instance-of v14, v14, Ljavafx/scene/Node;

    if-eqz v14, :cond_0

    .line 365
    move-object v14, v8

    check-cast v14, Ljavafx/scene/Node;

    move-object v10, v14

    .line 366
    .local v10, "parentNode":Ljavafx/scene/Node;
    move-object v14, v10

    iget-object v14, v14, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v11, v14

    .line 367
    .local v11, "helper":Ljavafx/scene/CssStyleHelper;
    move-object v14, v11

    if-eqz v14, :cond_0

    move-object v14, v11

    invoke-static {v14}, Ljavafx/scene/CssStyleHelper;->access$500(Ljavafx/scene/CssStyleHelper;)Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 368
    move-object v14, v7

    move v15, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v11

    invoke-static/range {v16 .. v16}, Ljavafx/scene/CssStyleHelper;->access$500(Ljavafx/scene/CssStyleHelper;)Ljavafx/scene/CssStyleHelper$CacheContainer;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Ljavafx/scene/CssStyleHelper$CacheContainer;->smapId:I

    move/from16 v16, v0

    aput v16, v14, v15

    .line 371
    .end local v10    # "parentNode":Ljavafx/scene/Node;
    .end local v11    # "helper":Ljavafx/scene/CssStyleHelper;
    :cond_0
    move-object v14, v8

    invoke-interface {v14}, Ljavafx/css/Styleable;->getStyleableParent()Ljavafx/css/Styleable;

    move-result-object v14

    move-object v8, v14

    .line 361
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 375
    :cond_1
    move-object v14, v2

    new-instance v15, Lcom/sun/javafx/css/StyleCache$Key;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v7

    move/from16 v18, v6

    invoke-direct/range {v16 .. v18}, Lcom/sun/javafx/css/StyleCache$Key;-><init>([II)V

    iput-object v15, v14, Ljavafx/scene/CssStyleHelper$CacheContainer;->styleCacheKey:Lcom/sun/javafx/css/StyleCache$Key;

    .line 377
    const/4 v14, 0x0

    move-object v9, v14

    .line 379
    .local v9, "styleableFontProperty":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<Ljavafx/css/Styleable;Ljavafx/scene/text/Font;>;"
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/scene/Node;->getCssMetaData()Ljava/util/List;

    move-result-object v14

    move-object v10, v14

    .line 380
    .local v10, "props":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v14, v10

    if-eqz v14, :cond_3

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    move v11, v14

    .line 381
    .local v11, "pMax":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "p":I
    :goto_2
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_2

    .line 382
    move-object v14, v10

    move v15, v12

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/css/CssMetaData;

    move-object v13, v14

    .line 384
    .local v13, "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    const-string v14, "-fx-font"

    move-object v15, v13

    invoke-virtual {v15}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 386
    move-object v14, v13

    move-object v9, v14

    .line 391
    .end local v13    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_2
    move-object v14, v2

    move-object v15, v9

    iput-object v15, v14, Ljavafx/scene/CssStyleHelper$CacheContainer;->fontProp:Ljavafx/css/CssMetaData;

    .line 392
    move-object v14, v2

    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v14, Ljavafx/scene/CssStyleHelper$CacheContainer;->fontSizeCache:Ljava/util/Map;

    .line 394
    move-object v14, v2

    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v14, Ljavafx/scene/CssStyleHelper$CacheContainer;->cssSetProperties:Ljava/util/Map;

    .line 396
    return-void

    .line 380
    .end local v11    # "pMax":I
    .end local v12    # "p":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 381
    .restart local v11    # "pMax":I
    .restart local v12    # "p":I
    .restart local v13    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;ILjavafx/scene/CssStyleHelper$1;)V
    .locals 9

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/css/StyleMap;
    move v3, p3

    .local v3, "x2":I
    move-object v4, p4

    .local v4, "x3":Ljavafx/scene/CssStyleHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/CssStyleHelper$CacheContainer;-><init>(Ljavafx/scene/Node;Lcom/sun/javafx/css/StyleMap;I)V

    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->fontSizeCache:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/CssStyleHelper$CacheContainer;)Z
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->forceSlowpath:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return v0
.end method

.method static synthetic access$102(Ljavafx/scene/CssStyleHelper$CacheContainer;Z)Z
    .locals 7

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/CssStyleHelper$CacheContainer;->forceSlowpath:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljavafx/css/CssMetaData;
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->fontProp:Ljavafx/css/CssMetaData;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/CssStyleHelper$CacheContainer;)Lcom/sun/javafx/css/StyleCache$Key;
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->styleCacheKey:Lcom/sun/javafx/css/StyleCache$Key;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/CssStyleHelper$CacheContainer;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/CssStyleHelper$CacheContainer;->cssSetProperties:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/CssStyleHelper$CacheContainer;Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/css/Styleable;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/CssStyleHelper$CacheContainer;->getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/CssStyleHelper$CacheContainer;
    return-object v0
.end method

.method private getStyleMap(Ljavafx/css/Styleable;)Lcom/sun/javafx/css/StyleMap;
    .locals 7

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/CssStyleHelper$CacheContainer;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 400
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 401
    .local v2, "subScene":Ljavafx/scene/SubScene;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Ljavafx/scene/CssStyleHelper$CacheContainer;->smapId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/css/StyleManager;->getStyleMap(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;I)Lcom/sun/javafx/css/StyleMap;

    move-result-object v3

    move-object v0, v3

    .line 403
    .end local v0    # "this":Ljavafx/scene/CssStyleHelper$CacheContainer;
    .end local v2    # "subScene":Ljavafx/scene/SubScene;
    :goto_1
    return-object v0

    .line 400
    .restart local v0    # "this":Ljavafx/scene/CssStyleHelper$CacheContainer;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 403
    :cond_1
    sget-object v3, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object v0, v3

    goto :goto_1
.end method
