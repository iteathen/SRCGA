.class Ljavafx/scene/Scene$TouchMap;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchMap"
.end annotation


# static fields
.field private static final FAST_THRESHOLD:I = 0xa


# instance fields
.field active:I

.field counter:I

.field fastMap:[I

.field order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field removed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field slowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 5424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5426
    move-object v1, v0

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Ljavafx/scene/Scene$TouchMap;->fastMap:[I

    .line 5427
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Scene$TouchMap;->slowMap:Ljava/util/Map;

    .line 5428
    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Scene$TouchMap;->order:Ljava/util/List;

    .line 5429
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Ljavafx/scene/Scene$TouchMap;->removed:Ljava/util/List;

    .line 5430
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Scene$TouchMap;->counter:I

    .line 5431
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Scene$TouchMap;->active:I

    return-void

    .line 5426
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Ljavafx/scene/Scene$1;)V
    .locals 3

    .prologue
    .line 5424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchMap;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/Scene$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene$TouchMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)I
    .locals 9

    .prologue
    .line 5434
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$TouchMap;
    move-wide v2, p1

    .local v2, "id":J
    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Ljavafx/scene/Scene$TouchMap;->counter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/scene/Scene$TouchMap;->counter:I

    .line 5435
    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Ljavafx/scene/Scene$TouchMap;->active:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Ljavafx/scene/Scene$TouchMap;->active:I

    .line 5436
    move-wide v4, v2

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 5437
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->fastMap:[I

    move-wide v5, v2

    long-to-int v5, v5

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/Scene$TouchMap;->counter:I

    aput v6, v4, v5

    .line 5441
    :goto_0
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->order:Ljava/util/List;

    move-object v5, v1

    iget v5, v5, Ljavafx/scene/Scene$TouchMap;->counter:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 5442
    move-object v4, v1

    iget v4, v4, Ljavafx/scene/Scene$TouchMap;->counter:I

    move v1, v4

    .end local v1    # "this":Ljavafx/scene/Scene$TouchMap;
    return v1

    .line 5439
    .restart local v1    # "this":Ljavafx/scene/Scene$TouchMap;
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->slowMap:Ljava/util/Map;

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/Scene$TouchMap;->counter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 9

    .prologue
    .line 5475
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchMap;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->removed:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v2, v4

    .line 5476
    .local v2, "id":J
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Ljavafx/scene/Scene$TouchMap;->active:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Ljavafx/scene/Scene$TouchMap;->active:I

    .line 5477
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->order:Ljava/util/List;

    move-object v5, v0

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Scene$TouchMap;->get(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 5478
    move-wide v4, v2

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 5479
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->fastMap:[I

    move-wide v5, v2

    long-to-int v5, v5

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 5483
    :goto_1
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Scene$TouchMap;->active:I

    if-nez v4, :cond_0

    .line 5485
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Ljavafx/scene/Scene$TouchMap;->counter:I

    .line 5487
    :cond_0
    goto :goto_0

    .line 5481
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->slowMap:Ljava/util/Map;

    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 5488
    .end local v2    # "id":J
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$TouchMap;->removed:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5489
    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Scene$TouchMap;->active:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .end local v0    # "this":Ljavafx/scene/Scene$TouchMap;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene$TouchMap;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public get(J)I
    .locals 11

    .prologue
    .line 5452
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$TouchMap;
    move-wide v2, p1

    .local v2, "id":J
    move-wide v5, v2

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 5453
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/Scene$TouchMap;->fastMap:[I

    move-wide v6, v2

    long-to-int v6, v6

    aget v5, v5, v6

    move v4, v5

    .line 5454
    .local v4, "result":I
    move v5, v4

    if-nez v5, :cond_0

    .line 5455
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Platform reported wrong touch point ID"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5458
    :cond_0
    move v5, v4

    move v1, v5

    .line 5461
    .end local v1    # "this":Ljavafx/scene/Scene$TouchMap;
    .end local v4    # "result":I
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/scene/Scene$TouchMap;
    :cond_1
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Ljavafx/scene/Scene$TouchMap;->slowMap:Ljava/util/Map;

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v1, v5

    goto :goto_0

    .line 5462
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 5463
    .local v4, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "Platform reported wrong touch point ID"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getOrder(I)I
    .locals 4

    .prologue
    .line 5470
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchMap;
    move v1, p1

    .local v1, "id":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$TouchMap;->order:Ljava/util/List;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene$TouchMap;
    return v0
.end method

.method public remove(J)V
    .locals 7

    .prologue
    .line 5448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$TouchMap;
    move-wide v1, p1

    .local v1, "id":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$TouchMap;->removed:Ljava/util/List;

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 5449
    return-void
.end method
