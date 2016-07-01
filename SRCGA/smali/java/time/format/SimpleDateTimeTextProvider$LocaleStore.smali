.class final Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
.super Ljava/lang/Object;
.source "SimpleDateTimeTextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/SimpleDateTimeTextProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LocaleStore"
.end annotation


# instance fields
.field private final parsable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final valueTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    move-object/from16 v1, p1

    .local v1, "valueTextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 327
    move-object v10, v0

    move-object v11, v1

    iput-object v11, v10, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->valueTextMap:Ljava/util/Map;

    .line 328
    new-instance v10, Ljava/util/HashMap;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v2, v10

    .line 329
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v10

    .line 330
    .local v3, "allList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object v10, v1

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    :goto_0
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/format/TextStyle;

    move-object v5, v10

    .line 331
    .local v5, "style":Ljava/time/format/TextStyle;
    new-instance v10, Ljava/util/HashMap;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v6, v10

    .line 332
    .local v6, "reverse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object v10, v1

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v10

    :goto_1
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v8, v10

    .line 333
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    .line 334
    .local v9, "created":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object v10, v6

    move-object v11, v8

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v9

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 335
    goto :goto_1

    .line 337
    :cond_0
    goto :goto_1

    .line 338
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v9    # "created":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v10

    .line 339
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object v10, v7

    # getter for: Ljava/time/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Ljava/time/format/SimpleDateTimeTextProvider;->access$000()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    move-object v10, v2

    move-object v11, v5

    move-object v12, v7

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 341
    move-object v10, v3

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    .line 342
    move-object v10, v2

    const/4 v11, 0x0

    move-object v12, v3

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 343
    goto/16 :goto_0

    .line 344
    .end local v5    # "style":Ljava/time/format/TextStyle;
    .end local v6    # "reverse":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    move-object v10, v3

    # getter for: Ljava/time/format/SimpleDateTimeTextProvider;->COMPARATOR:Ljava/util/Comparator;
    invoke-static {}, Ljava/time/format/SimpleDateTimeTextProvider;->access$000()Ljava/util/Comparator;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    move-object v10, v0

    move-object v11, v2

    iput-object v11, v10, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->parsable:Ljava/util/Map;

    .line 346
    return-void
.end method


# virtual methods
.method getText(JLjava/time/format/TextStyle;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, p3

    .local v3, "style":Ljava/time/format/TextStyle;
    move-object v5, v0

    iget-object v5, v5, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->valueTextMap:Ljava/util/Map;

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 359
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    move-object v0, v5

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method getTextIterator(Ljava/time/format/TextStyle;)Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    move-object v1, p1

    .local v1, "style":Ljava/time/format/TextStyle;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;->parsable:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 373
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    return-object v0

    .restart local v0    # "this":Ljava/time/format/SimpleDateTimeTextProvider$LocaleStore;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
