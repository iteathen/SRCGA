.class Lcom/sun/javafx/css/StyleManager$Cache;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/StyleManager$Cache$Key;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleManager$Cache$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$Cache;
    move-object v1, p1

    .local v1, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2117
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    .line 2118
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/css/StyleManager$Cache;->cache:Ljava/util/Map;

    .line 2119
    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/css/StyleManager$Cache;Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljavafx/scene/Node;[Ljava/util/Set;Z)Lcom/sun/javafx/css/StyleMap;
    .locals 10

    .prologue
    .line 2064
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$Cache;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "x3":[Ljava/util/Set;
    move v4, p4

    .local v4, "x4":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/css/StyleManager$Cache;->getStyleMap(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljavafx/scene/Node;[Ljava/util/Set;Z)Lcom/sun/javafx/css/StyleMap;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$Cache;
    return-object v0
.end method

.method private getStyleMap(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljavafx/scene/Node;[Ljava/util/Set;Z)Lcom/sun/javafx/css/StyleMap;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/StyleManager$CacheContainer;",
            "Ljavafx/scene/Node;",
            "[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;Z)",
            "Lcom/sun/javafx/css/StyleMap;"
        }
    .end annotation

    .prologue
    .line 2123
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/css/StyleManager$Cache;
    move-object/from16 v4, p1

    .local v4, "cacheContainer":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object/from16 v5, p2

    .local v5, "node":Ljavafx/scene/Node;
    move-object/from16 v6, p3

    .local v6, "triggerStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move/from16 v7, p4

    .local v7, "hasInlineStyle":Z
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    :cond_0
    move/from16 v20, v7

    if-nez v20, :cond_1

    .line 2124
    sget-object v20, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v3, v20

    .line 2218
    .end local v3    # "this":Lcom/sun/javafx/css/StyleManager$Cache;
    :goto_0
    return-object v3

    .line 2127
    .restart local v3    # "this":Lcom/sun/javafx/css/StyleManager$Cache;
    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v8, v20

    .line 2140
    .local v8, "selectorDataSize":I
    move/from16 v20, v8

    const/16 v21, 0x40

    div-int/lit8 v20, v20, 0x40

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    move-object/from16 v9, v20

    .line 2141
    .local v9, "key":[J
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 2143
    .local v10, "nothingMatched":Z
    const/16 v20, 0x0

    move/from16 v11, v20

    .local v11, "s":I
    :goto_1
    move/from16 v20, v11

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 2145
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    move-object/from16 v20, v0

    move/from16 v21, v11

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Selector;

    move-object/from16 v12, v20

    .line 2165
    .local v12, "sel":Lcom/sun/javafx/css/Selector;
    move-object/from16 v20, v12

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Lcom/sun/javafx/css/Selector;->applies(Ljavafx/css/Styleable;[Ljava/util/Set;I)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 2166
    move/from16 v20, v11

    const/16 v21, 0x40

    div-int/lit8 v20, v20, 0x40

    move/from16 v13, v20

    .line 2167
    .local v13, "index":I
    move-object/from16 v20, v9

    move/from16 v21, v13

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x1

    move/from16 v24, v11

    shl-long v22, v22, v24

    or-long v20, v20, v22

    move-wide/from16 v14, v20

    .line 2168
    .local v14, "mask":J
    move-object/from16 v20, v9

    move/from16 v21, v13

    move-wide/from16 v22, v14

    aput-wide v22, v20, v21

    .line 2169
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 2143
    .end local v13    # "index":I
    .end local v14    # "mask":J
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2174
    .end local v12    # "sel":Lcom/sun/javafx/css/Selector;
    :cond_3
    move/from16 v20, v10

    if-eqz v20, :cond_4

    move/from16 v20, v7

    if-nez v20, :cond_4

    .line 2175
    sget-object v20, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 2178
    :cond_4
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getStyle()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v11, v20

    .line 2179
    .local v11, "inlineStyle":Ljava/lang/String;
    new-instance v20, Lcom/sun/javafx/css/StyleManager$Cache$Key;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move-object/from16 v22, v9

    move-object/from16 v23, v11

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/css/StyleManager$Cache$Key;-><init>([JLjava/lang/String;)V

    move-object/from16 v12, v20

    .line 2181
    .local v12, "keyObj":Lcom/sun/javafx/css/StyleManager$Cache$Key;
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->cache:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2182
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->cache:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v13, v20

    .line 2183
    .local v13, "styleMapId":Ljava/lang/Integer;
    move-object/from16 v20, v13

    if-eqz v20, :cond_5

    move-object/from16 v20, v4

    move-object/from16 v21, v13

    .line 2184
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMap(I)Lcom/sun/javafx/css/StyleMap;

    move-result-object v20

    :goto_2
    move-object/from16 v14, v20

    .line 2186
    .local v14, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v20, v14

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 2184
    .end local v14    # "styleMap":Lcom/sun/javafx/css/StyleMap;
    :cond_5
    sget-object v20, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    goto :goto_2

    .line 2189
    .end local v13    # "styleMapId":Ljava/lang/Integer;
    :cond_6
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v13, v20

    .line 2191
    .local v13, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move/from16 v20, v7

    if-eqz v20, :cond_7

    .line 2192
    move-object/from16 v20, v4

    move-object/from16 v21, v11

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$900(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v20

    move-object/from16 v14, v20

    .line 2193
    .local v14, "selector":Lcom/sun/javafx/css/Selector;
    move-object/from16 v20, v14

    if-eqz v20, :cond_7

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 2196
    .end local v14    # "selector":Lcom/sun/javafx/css/Selector;
    :cond_7
    const/16 v20, 0x0

    move/from16 v14, v20

    .local v14, "k":I
    :goto_3
    move/from16 v20, v14

    move-object/from16 v21, v9

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 2198
    move-object/from16 v20, v9

    move/from16 v21, v14

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_9

    .line 2196
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2200
    :cond_9
    move/from16 v20, v14

    const/16 v21, 0x40

    mul-int/lit8 v20, v20, 0x40

    move/from16 v15, v20

    .line 2202
    .local v15, "offset":I
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "b":I
    :goto_4
    move/from16 v20, v16

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 2205
    const-wide/16 v20, 0x1

    move/from16 v22, v16

    shl-long v20, v20, v22

    move-wide/from16 v17, v20

    .line 2206
    .local v17, "mask":J
    move-wide/from16 v20, v17

    move-object/from16 v22, v9

    move/from16 v23, v14

    aget-wide v22, v22, v23

    and-long v20, v20, v22

    move-wide/from16 v22, v17

    cmp-long v20, v20, v22

    if-eqz v20, :cond_a

    .line 2202
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 2208
    :cond_a
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->selectors:Ljava/util/List;

    move-object/from16 v20, v0

    move/from16 v21, v15

    move/from16 v22, v16

    add-int v21, v21, v22

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sun/javafx/css/Selector;

    move-object/from16 v19, v20

    .line 2209
    .local v19, "pair":Lcom/sun/javafx/css/Selector;
    move-object/from16 v20, v13

    move-object/from16 v21, v19

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    goto :goto_5

    .line 2213
    .end local v15    # "offset":I
    .end local v16    # "b":I
    .end local v17    # "mask":J
    .end local v19    # "pair":Lcom/sun/javafx/css/Selector;
    :cond_b
    move-object/from16 v20, v4

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$1000(Lcom/sun/javafx/css/StyleManager$CacheContainer;)I

    move-result v20

    move/from16 v14, v20

    .line 2214
    .local v14, "id":I
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Cache;->cache:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move/from16 v22, v14

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 2216
    new-instance v20, Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v25, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v25

    move/from16 v22, v14

    move-object/from16 v23, v13

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/css/StyleMap;-><init>(ILjava/util/List;)V

    move-object/from16 v15, v20

    .line 2217
    .local v15, "styleMap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v20, v4

    move-object/from16 v21, v15

    invoke-static/range {v20 .. v21}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$1100(Lcom/sun/javafx/css/StyleManager$CacheContainer;Lcom/sun/javafx/css/StyleMap;)V

    .line 2218
    move-object/from16 v20, v15

    move-object/from16 v3, v20

    goto/16 :goto_0
.end method
