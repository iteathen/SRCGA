.class public final Lcom/sun/javafx/css/SelectorPartitioning;
.super Ljava/lang/Object;
.source "SelectorPartitioning.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/SelectorPartitioning$Slot;,
        Lcom/sun/javafx/css/SelectorPartitioning$Partition;,
        Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_BIT:I = 0x4

.field private static final STYLECLASS_BIT:I = 0x1

.field private static final TYPE_BIT:I = 0x2

.field private static final WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;


# instance fields
.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;",
            ">;"
        }
    .end annotation
.end field

.field private ordinal:I

.field private final styleClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;",
            ">;"
        }
    .end annotation
.end field

.field private final typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const-class v0, Lcom/sun/javafx/css/SelectorPartitioning;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/SelectorPartitioning;->$assertionsDisabled:Z

    .line 225
    new-instance v0, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "*"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    sput-object v0, Lcom/sun/javafx/css/SelectorPartitioning;->WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    .line 428
    invoke-static {}, Lcom/sun/javafx/css/SelectorPartitioning$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/css/SelectorPartitioning;->COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 181
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/SelectorPartitioning;->idMap:Ljava/util/Map;

    .line 184
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/SelectorPartitioning;->typeMap:Ljava/util/Map;

    .line 187
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/SelectorPartitioning;->styleClassMap:Ljava/util/Map;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/css/SelectorPartitioning;->getPartition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/Selector;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/css/SelectorPartitioning;->lambda$static$169(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/Selector;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private static getPartition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;",
            ">;)",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "id":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Lcom/sun/javafx/css/SelectorPartitioning$Partition;>;"
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-object v2, v3

    .line 211
    .local v2, "treeNode":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 212
    new-instance v3, Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;-><init>(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    move-object v2, v3

    .line 213
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 215
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "id":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    return-object v0
.end method

.method private static synthetic lambda$static$169(Lcom/sun/javafx/css/Selector;Lcom/sun/javafx/css/Selector;)I
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "o1":Lcom/sun/javafx/css/Selector;
    move-object v1, p1

    .local v1, "o2":Lcom/sun/javafx/css/Selector;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/css/Selector;->getOrdinal()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/css/Selector;->getOrdinal()I

    move-result v3

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "o1":Lcom/sun/javafx/css/Selector;
    return v0
.end method


# virtual methods
.method match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/css/StyleClass;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/SelectorPartitioning;
    move-object/from16 v3, p1

    .local v3, "selectorId":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "selectorType":Ljava/lang/String;
    move-object/from16 v5, p3

    .local v5, "selectorStyleClass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v21, v3

    if-eqz v21, :cond_1

    move-object/from16 v21, v3

    .line 306
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1

    const/16 v21, 0x1

    :goto_0
    move/from16 v6, v21

    .line 307
    .local v6, "hasId":Z
    move/from16 v21, v6

    if-eqz v21, :cond_2

    new-instance v21, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v3

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_1
    move-object/from16 v7, v21

    .line 311
    .local v7, "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object/from16 v21, v4

    if-eqz v21, :cond_3

    move-object/from16 v21, v4

    .line 312
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    const/16 v21, 0x1

    :goto_2
    move/from16 v8, v21

    .line 313
    .local v8, "hasType":Z
    move/from16 v21, v8

    if-eqz v21, :cond_4

    new-instance v21, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v4

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_3
    move-object/from16 v9, v21

    .line 317
    .local v9, "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object/from16 v21, v5

    if-eqz v21, :cond_5

    move-object/from16 v21, v5

    .line 318
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->size()I

    move-result v21

    if-lez v21, :cond_5

    const/16 v21, 0x1

    :goto_4
    move/from16 v10, v21

    .line 319
    .local v10, "hasStyleClass":Z
    move/from16 v21, v10

    if-eqz v21, :cond_6

    new-instance v21, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move-object/from16 v23, v5

    const/16 v24, 0x0

    invoke-direct/range {v22 .. v24}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_5
    move-object/from16 v11, v21

    .line 323
    .local v11, "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move/from16 v21, v6

    if-eqz v21, :cond_7

    const/16 v21, 0x4

    :goto_6
    move/from16 v22, v8

    if-eqz v22, :cond_8

    const/16 v22, 0x2

    :goto_7
    or-int v21, v21, v22

    move/from16 v22, v10

    if-eqz v22, :cond_9

    const/16 v22, 0x1

    :goto_8
    or-int v21, v21, v22

    move/from16 v12, v21

    .line 326
    .local v12, "c":I
    const/16 v21, 0x0

    move-object/from16 v13, v21

    .line 327
    .local v13, "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    const/16 v21, 0x0

    move-object/from16 v14, v21

    .line 328
    .local v14, "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v15, v21

    .line 330
    .local v15, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_0
    :goto_9
    move/from16 v21, v12

    if-eqz v21, :cond_1a

    .line 332
    move/from16 v21, v12

    packed-switch v21, :pswitch_data_0

    .line 420
    sget-boolean v21, Lcom/sun/javafx/css/SelectorPartitioning;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    invoke-direct/range {v22 .. v22}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 306
    .end local v6    # "hasId":Z
    .end local v7    # "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v8    # "hasType":Z
    .end local v9    # "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v10    # "hasStyleClass":Z
    .end local v11    # "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v12    # "c":I
    .end local v13    # "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .end local v14    # "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .end local v15    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_1
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 307
    .restart local v6    # "hasId":Z
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 312
    .restart local v7    # "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 313
    .restart local v8    # "hasType":Z
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 318
    .restart local v9    # "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_5
    const/16 v21, 0x0

    goto :goto_4

    .line 319
    .restart local v10    # "hasStyleClass":Z
    :cond_6
    const/16 v21, 0x0

    goto :goto_5

    .line 323
    .restart local v11    # "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_7
    const/16 v21, 0x0

    goto :goto_6

    :cond_8
    const/16 v22, 0x0

    goto :goto_7

    :cond_9
    const/16 v22, 0x0

    goto :goto_8

    .line 337
    .restart local v12    # "c":I
    .restart local v13    # "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .restart local v14    # "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .restart local v15    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :pswitch_0
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->idMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v22, v7

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-object/from16 v13, v21

    .line 338
    move-object/from16 v21, v13

    if-eqz v21, :cond_11

    .line 339
    move-object/from16 v21, v13

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$800(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 340
    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$800(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 344
    :cond_a
    move-object/from16 v21, v9

    move-object/from16 v16, v21

    .line 346
    .local v16, "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_b
    move-object/from16 v21, v13

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$900(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-object/from16 v14, v21

    .line 347
    move-object/from16 v21, v14

    if-eqz v21, :cond_10

    .line 349
    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 350
    move-object/from16 v21, v15

    move-object/from16 v22, v14

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 352
    :cond_c
    move/from16 v21, v12

    const/16 v22, 0x1

    and-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 353
    move-object/from16 v21, v11

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->access$1100(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    move-object/from16 v17, v21

    .line 354
    .local v17, "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v21, v14

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1200(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :cond_d
    :goto_a
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-object/from16 v19, v21

    .line 355
    .local v19, "s":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_d

    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    goto :goto_a

    .line 356
    :cond_e
    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1300(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$1400(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->access$1100(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    move-object/from16 v20, v21

    .line 357
    .local v20, "other":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v21, v17

    move-object/from16 v22, v20

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 358
    move-object/from16 v21, v15

    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 360
    :cond_f
    goto :goto_a

    .line 365
    .end local v17    # "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    .end local v19    # "s":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .end local v20    # "other":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    :cond_10
    sget-object v21, Lcom/sun/javafx/css/SelectorPartitioning;->WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    sget-object v21, Lcom/sun/javafx/css/SelectorPartitioning;->WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    :goto_b
    move-object/from16 v16, v21

    .line 367
    move-object/from16 v21, v16

    if-nez v21, :cond_b

    .line 370
    .end local v16    # "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_11
    add-int/lit8 v12, v12, -0x4

    .line 371
    goto/16 :goto_9

    .line 365
    .restart local v16    # "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_12
    const/16 v21, 0x0

    goto :goto_b

    .line 378
    .end local v16    # "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :pswitch_1
    add-int/lit8 v12, v12, -0x4

    .line 379
    goto/16 :goto_9

    .line 387
    :pswitch_2
    move-object/from16 v21, v9

    move-object/from16 v16, v21

    .line 389
    .restart local v16    # "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_13
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->typeMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-object/from16 v13, v21

    .line 390
    move-object/from16 v21, v13

    if-eqz v21, :cond_18

    .line 391
    move-object/from16 v21, v13

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$800(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_14

    .line 392
    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$800(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 394
    :cond_14
    move/from16 v21, v12

    const/16 v22, 0x1

    and-int/lit8 v21, v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 395
    move-object/from16 v21, v11

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->access$1100(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    move-object/from16 v17, v21

    .line 396
    .restart local v17    # "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v21, v13

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$900(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :cond_15
    :goto_c
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-object/from16 v19, v21

    .line 397
    .restart local v19    # "s":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_15

    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_16

    goto :goto_c

    .line 398
    :cond_16
    move-object/from16 v21, v19

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1300(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$1400(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->access$1100(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Set;

    move-object/from16 v20, v21

    .line 399
    .restart local v20    # "other":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v21, v17

    move-object/from16 v22, v20

    invoke-interface/range {v21 .. v22}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 400
    move-object/from16 v21, v15

    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v21

    .line 402
    :cond_17
    goto :goto_c

    .line 406
    .end local v17    # "key":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    .end local v19    # "s":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .end local v20    # "other":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    :cond_18
    sget-object v21, Lcom/sun/javafx/css/SelectorPartitioning;->WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v22, v16

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_19

    sget-object v21, Lcom/sun/javafx/css/SelectorPartitioning;->WILDCARD:Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    :goto_d
    move-object/from16 v16, v21

    .line 408
    move-object/from16 v21, v16

    if-nez v21, :cond_13

    .line 410
    add-int/lit8 v12, v12, -0x2

    .line 411
    goto/16 :goto_9

    .line 406
    :cond_19
    const/16 v21, 0x0

    goto :goto_d

    .line 416
    .end local v16    # "typePK":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :pswitch_3
    add-int/lit8 v12, v12, -0x1

    .line 417
    goto/16 :goto_9

    .line 424
    :cond_1a
    move-object/from16 v21, v15

    sget-object v22, Lcom/sun/javafx/css/SelectorPartitioning;->COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 425
    move-object/from16 v21, v15

    move-object/from16 v2, v21

    .end local v2    # "this":Lcom/sun/javafx/css/SelectorPartitioning;
    return-object v2

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method partition(Lcom/sun/javafx/css/Selector;)V
    .locals 24

    .prologue
    .line 230
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/SelectorPartitioning;
    move-object/from16 v3, p1

    .local v3, "selector":Lcom/sun/javafx/css/Selector;
    const/16 v17, 0x0

    move-object/from16 v4, v17

    .line 231
    .local v4, "simpleSelector":Lcom/sun/javafx/css/SimpleSelector;
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sun/javafx/css/CompoundSelector;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 232
    move-object/from16 v17, v3

    check-cast v17, Lcom/sun/javafx/css/CompoundSelector;

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/CompoundSelector;->getSelectors()Ljava/util/List;

    move-result-object v17

    move-object/from16 v5, v17

    .line 233
    .local v5, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v6, v17

    .line 234
    .local v6, "last":I
    move-object/from16 v17, v5

    move/from16 v18, v6

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sun/javafx/css/SimpleSelector;

    move-object/from16 v4, v17

    .line 239
    .end local v5    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/SimpleSelector;>;"
    .end local v6    # "last":I
    :goto_0
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/SimpleSelector;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    .line 240
    .local v5, "selectorId":Ljava/lang/String;
    move-object/from16 v17, v5

    if-eqz v17, :cond_1

    move-object/from16 v17, v5

    .line 241
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    move/from16 v6, v17

    .line 242
    .local v6, "hasId":Z
    move/from16 v17, v6

    if-eqz v17, :cond_2

    new-instance v17, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v5

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_2
    move-object/from16 v7, v17

    .line 246
    .local v7, "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/SimpleSelector;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    .line 247
    .local v8, "selectorType":Ljava/lang/String;
    move-object/from16 v17, v8

    if-eqz v17, :cond_3

    move-object/from16 v17, v8

    .line 248
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x1

    :goto_3
    move/from16 v9, v17

    .line 249
    .local v9, "hasType":Z
    move/from16 v17, v9

    if-eqz v17, :cond_4

    new-instance v17, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v8

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_4
    move-object/from16 v10, v17

    .line 253
    .local v10, "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/css/SimpleSelector;->getStyleClassSet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v11, v17

    .line 254
    .local v11, "selectorStyleClass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    move-object/from16 v17, v11

    if-eqz v17, :cond_5

    move-object/from16 v17, v11

    .line 255
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_5

    const/16 v17, 0x1

    :goto_5
    move/from16 v12, v17

    .line 256
    .local v12, "hasStyleClass":Z
    move/from16 v17, v12

    if-eqz v17, :cond_6

    new-instance v17, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v11

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V

    :goto_6
    move-object/from16 v13, v17

    .line 260
    .local v13, "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move/from16 v17, v6

    if-eqz v17, :cond_7

    const/16 v17, 0x4

    :goto_7
    move/from16 v18, v9

    if-eqz v18, :cond_8

    const/16 v18, 0x2

    :goto_8
    or-int v17, v17, v18

    move/from16 v18, v12

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    :goto_9
    or-int v17, v17, v18

    move/from16 v14, v17

    .line 263
    .local v14, "c":I
    const/16 v17, 0x0

    move-object/from16 v15, v17

    .line 264
    .local v15, "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    const/16 v17, 0x0

    move-object/from16 v16, v17

    .line 266
    .local v16, "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->ordinal:I

    move/from16 v19, v0

    move-object/from16 v22, v18

    move/from16 v23, v19

    move/from16 v18, v23

    move-object/from16 v19, v22

    move/from16 v20, v23

    const/16 v21, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sun/javafx/css/SelectorPartitioning;->ordinal:I

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/css/Selector;->setOrdinal(I)V

    .line 268
    move/from16 v17, v14

    packed-switch v17, :pswitch_data_0

    .line 297
    :pswitch_0
    sget-boolean v17, Lcom/sun/javafx/css/SelectorPartitioning;->$assertionsDisabled:Z

    if-nez v17, :cond_b

    new-instance v17, Ljava/lang/AssertionError;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 236
    .end local v5    # "selectorId":Ljava/lang/String;
    .end local v6    # "hasId":Z
    .end local v7    # "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v8    # "selectorType":Ljava/lang/String;
    .end local v9    # "hasType":Z
    .end local v10    # "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v11    # "selectorStyleClass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    .end local v12    # "hasStyleClass":Z
    .end local v13    # "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .end local v14    # "c":I
    .end local v15    # "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .end local v16    # "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    :cond_0
    move-object/from16 v17, v3

    check-cast v17, Lcom/sun/javafx/css/SimpleSelector;

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 241
    .restart local v5    # "selectorId":Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 242
    .restart local v6    # "hasId":Z
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v7    # "idKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .restart local v8    # "selectorType":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 249
    .restart local v9    # "hasType":Z
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 255
    .restart local v10    # "typeKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    .restart local v11    # "selectorStyleClass":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/javafx/css/StyleClass;>;"
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 256
    .restart local v12    # "hasStyleClass":Z
    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    .line 260
    .restart local v13    # "styleClassKey":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    :cond_9
    const/16 v18, 0x0

    goto :goto_9

    .line 272
    .restart local v14    # "c":I
    .restart local v15    # "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .restart local v16    # "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    :pswitch_1
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->idMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/css/SelectorPartitioning;->getPartition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v17

    move-object/from16 v15, v17

    .line 273
    move-object/from16 v17, v15

    move-object/from16 v18, v10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->typeMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$400(Lcom/sun/javafx/css/SelectorPartitioning$Partition;Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-result-object v17

    move-object/from16 v16, v17

    .line 274
    move/from16 v17, v14

    const/16 v18, 0x1

    and-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 275
    move-object/from16 v17, v16

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->styleClassMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$500(Lcom/sun/javafx/css/SelectorPartitioning$Slot;Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-result-object v17

    move-object/from16 v16, v17

    .line 277
    :cond_a
    move-object/from16 v17, v16

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$600(Lcom/sun/javafx/css/SelectorPartitioning$Slot;Lcom/sun/javafx/css/Selector;)V

    .line 278
    .line 300
    :cond_b
    :goto_a
    return-void

    .line 283
    :pswitch_2
    move-object/from16 v17, v10

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->typeMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/css/SelectorPartitioning;->getPartition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v17

    move-object/from16 v15, v17

    .line 284
    move/from16 v17, v14

    const/16 v18, 0x1

    and-int/lit8 v17, v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 285
    move-object/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/SelectorPartitioning;->styleClassMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$400(Lcom/sun/javafx/css/SelectorPartitioning$Partition;Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-result-object v17

    move-object/from16 v16, v17

    .line 286
    move-object/from16 v17, v16

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->access$600(Lcom/sun/javafx/css/SelectorPartitioning$Slot;Lcom/sun/javafx/css/Selector;)V

    goto :goto_a

    .line 288
    :cond_c
    move-object/from16 v17, v15

    move-object/from16 v18, v3

    invoke-static/range {v17 .. v18}, Lcom/sun/javafx/css/SelectorPartitioning$Partition;->access$700(Lcom/sun/javafx/css/SelectorPartitioning$Partition;Lcom/sun/javafx/css/Selector;)V

    .line 290
    goto :goto_a

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method reset()V
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 198
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning;->typeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 199
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning;->styleClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 200
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/css/SelectorPartitioning;->ordinal:I

    .line 201
    return-void
.end method
