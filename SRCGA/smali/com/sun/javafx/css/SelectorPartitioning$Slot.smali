.class final Lcom/sun/javafx/css/SelectorPartitioning$Slot;
.super Ljava/lang/Object;
.source "SelectorPartitioning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/SelectorPartitioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Slot"
.end annotation


# instance fields
.field private final partition:Lcom/sun/javafx/css/SelectorPartitioning$Partition;

.field private final referents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private selectors:Ljava/util/List;
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
.method private constructor <init>(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)V
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "partition":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 151
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->partition:Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    .line 152
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->referents:Ljava/util/Map;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/SelectorPartitioning$Partition;Lcom/sun/javafx/css/SelectorPartitioning$1;)V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/css/SelectorPartitioning$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;-><init>(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/List;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->selectors:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->referents:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/css/SelectorPartitioning$Slot;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->partition:Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/css/SelectorPartitioning$Slot;Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object v2, p2

    .local v2, "x2":Ljava/util/Map;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->partition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/css/SelectorPartitioning$Slot;Lcom/sun/javafx/css/Selector;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/css/Selector;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->addSelector(Lcom/sun/javafx/css/Selector;)V

    return-void
.end method

.method private addSelector(Lcom/sun/javafx/css/Selector;)V
    .locals 6

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "pair":Lcom/sun/javafx/css/Selector;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->selectors:Ljava/util/List;

    if-nez v2, :cond_0

    .line 157
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->selectors:Ljava/util/List;

    .line 159
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->selectors:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 160
    return-void
.end method

.method private partition(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;",
            "Lcom/sun/javafx/css/SelectorPartitioning$Partition;",
            ">;)",
            "Lcom/sun/javafx/css/SelectorPartitioning$Slot;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v1, p1

    .local v1, "id":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object v2, p2

    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Lcom/sun/javafx/css/SelectorPartitioning$Partition;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->referents:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-object v3, v5

    .line 168
    .local v3, "slot":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 170
    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/css/SelectorPartitioning;->access$000(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;Ljava/util/Map;)Lcom/sun/javafx/css/SelectorPartitioning$Partition;

    move-result-object v5

    move-object v4, v5

    .line 171
    .local v4, "p":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    new-instance v5, Lcom/sun/javafx/css/SelectorPartitioning$Slot;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/SelectorPartitioning$Slot;-><init>(Lcom/sun/javafx/css/SelectorPartitioning$Partition;)V

    move-object v3, v5

    .line 172
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/css/SelectorPartitioning$Slot;->referents:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 175
    .end local v4    # "p":Lcom/sun/javafx/css/SelectorPartitioning$Partition;
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/css/SelectorPartitioning$Slot;
    return-object v0
.end method
