.class public abstract Lcom/sun/prism/impl/BaseResourcePool;
.super Ljava/lang/Object;
.source "BaseResourcePool.java"

# interfaces
.implements Lcom/sun/prism/impl/ResourcePool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;,
        Lcom/sun/prism/impl/BaseResourcePool$Predicate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/prism/impl/ResourcePool",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final FOREVER:I = 0x400

.field private static final RECENT:I = 0xa

.field private static final RECENTLY_USEFUL:I = 0x64

.field private static final stageReasons:[Ljava/lang/String;

.field private static final stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;


# instance fields
.field curTarget:J

.field managedSize:J

.field private final managerThread:Ljava/lang/Thread;

.field final maxSize:J

.field final origTarget:J

.field private resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final sharedParent:Lcom/sun/prism/impl/ResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    sput-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$3;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Pruning unuseful older than 1024"

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x1

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$4;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "Pruning unuseful older than 512"

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x2

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$5;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "Pruning unuseful older than 10"

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x3

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$6;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "Pruning all older than 1024"

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x4

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$7;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Pruning all older than 512"

    aput-object v2, v0, v1

    .line 65
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    const/4 v1, 0x5

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$8;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    sget-object v0, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "Pruning all older than 100"

    aput-object v2, v0, v1

    .line 67
    return-void
.end method

.method protected constructor <init>(JJ)V
    .locals 13

    .prologue
    .line 78
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide v2, p1

    .local v2, "target":J
    move-wide/from16 v4, p3

    .local v4, "max":J
    move-object v6, v1

    const/4 v7, 0x0

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/sun/prism/impl/BaseResourcePool;-><init>(Lcom/sun/prism/impl/ResourcePool;JJ)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ResourcePool;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, p1

    .local v1, "parent":Lcom/sun/prism/impl/ResourcePool;, "Lcom/sun/prism/impl/ResourcePool<TT;>;"
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/impl/ResourcePool;->target()J

    move-result-wide v4

    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/prism/impl/ResourcePool;->max()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/sun/prism/impl/BaseResourcePool;-><init>(Lcom/sun/prism/impl/ResourcePool;JJ)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Lcom/sun/prism/impl/ResourcePool;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ResourcePool",
            "<TT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object/from16 v2, p1

    .local v2, "parent":Lcom/sun/prism/impl/ResourcePool;, "Lcom/sun/prism/impl/ResourcePool<TT;>;"
    move-wide/from16 v3, p2

    .local v3, "target":J
    move-wide/from16 v5, p4

    .local v5, "max":J
    move-object v7, v1

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 86
    move-object v7, v1

    new-instance v8, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;-><init>()V

    iput-object v8, v7, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 87
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/sun/prism/impl/BaseResourcePool;->sharedParent:Lcom/sun/prism/impl/ResourcePool;

    .line 88
    move-object v7, v1

    move-object v8, v1

    move-wide v9, v3

    move-object v13, v8

    move-wide v14, v9

    move-wide v8, v14

    move-object v10, v13

    move-wide v11, v14

    iput-wide v11, v10, Lcom/sun/prism/impl/BaseResourcePool;->curTarget:J

    iput-wide v8, v7, Lcom/sun/prism/impl/BaseResourcePool;->origTarget:J

    .line 89
    move-object v7, v1

    move-object v8, v2

    if-nez v8, :cond_0

    move-wide v8, v5

    .line 91
    :goto_0
    iput-wide v8, v7, Lcom/sun/prism/impl/BaseResourcePool;->maxSize:J

    .line 92
    move-object v7, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/prism/impl/BaseResourcePool;->managerThread:Ljava/lang/Thread;

    .line 93
    return-void

    .line 89
    :cond_0
    move-object v8, v2

    .line 91
    invoke-interface {v8}, Lcom/sun/prism/impl/ResourcePool;->max()J

    move-result-wide v8

    move-wide v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$cleanup$444(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$pruneLastChance$445(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$438(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$439(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$440(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$5(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$441(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$6(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$442(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$lambda$7(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/prism/impl/BaseResourcePool;->lambda$static$443(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method private cleanup(Lcom/sun/prism/impl/BaseResourcePool$Predicate;)V
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, p1

    .local v1, "predicate":Lcom/sun/prism/impl/BaseResourcePool$Predicate;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v2, v5

    .line 222
    .local v2, "prev":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 223
    .local v3, "cur":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_4

    .line 224
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->getResource()Lcom/sun/prism/impl/ManagedResource;

    move-result-object v5

    move-object v4, v5

    .line 225
    .local v4, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/prism/impl/ManagedResource;->_isgone(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "unlinking"

    move-object v6, v3

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool;->showLink(Ljava/lang/String;Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;Z)V

    .line 227
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool;->recordFree(J)V

    .line 228
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 229
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 244
    :goto_1
    goto :goto_0

    .line 230
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->isPermanent()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v4

    .line 231
    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->isLocked()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v1

    move-object v6, v4

    .line 232
    invoke-interface {v5, v6}, Lcom/sun/prism/impl/BaseResourcePool$Predicate;->test(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "pruning"

    move-object v6, v3

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool;->showLink(Ljava/lang/String;Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;Z)V

    .line 235
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->free()V

    .line 236
    move-object v5, v4

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    .line 237
    move-object v5, v0

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool;->recordFree(J)V

    .line 238
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 239
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    goto :goto_1

    .line 241
    :cond_3
    move-object v5, v3

    move-object v2, v5

    .line 242
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    goto :goto_1

    .line 245
    .end local v4    # "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    :cond_4
    return-void
.end method

.method static commas(J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 314
    move-wide v0, p0

    .local v0, "v":J
    const-string v2, "%,d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "v":J
    return-object v0
.end method

.method private static synthetic lambda$cleanup$444(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0
.end method

.method private static synthetic lambda$pruneLastChance$445(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0
.end method

.method private static synthetic lambda$static$438(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isInteresting()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$439(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isInteresting()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$440(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->isInteresting()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$441(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$442(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$static$443(Lcom/sun/prism/impl/ManagedResource;)Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "mr":Lcom/sun/prism/impl/ManagedResource;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    return v0

    .restart local v0    # "mr":Lcom/sun/prism/impl/ManagedResource;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static printpoolpercent(IILjava/lang/String;)V
    .locals 14

    .prologue
    .line 378
    move v1, p0

    .local v1, "stat":I
    move v2, p1

    .local v2, "total":I
    move-object/from16 v3, p2

    .local v3, "desc":Ljava/lang/String;
    move v6, v1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    move v8, v2

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 379
    .local v4, "percent":D
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "%,d resources %s (%.1f%%)\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-wide v11, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v6

    .line 380
    return-void
.end method

.method private pruneLastChance(Z)V
    .locals 8

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move v2, p1

    .local v2, "desperate":Z
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 200
    move v4, v2

    if-eqz v4, :cond_0

    .line 205
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 208
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 209
    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v4, :cond_1

    .line 210
    move v4, v2

    if-eqz v4, :cond_2

    .line 211
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Last chance pruning"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 215
    :goto_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in pool: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    :cond_1
    move-object v4, v1

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$2;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/prism/impl/BaseResourcePool;->cleanup(Lcom/sun/prism/impl/BaseResourcePool$Predicate;)V

    .line 218
    return-void

    .line 206
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0

    .line 213
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Pruning everything"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static showLink(Ljava/lang/String;Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 248
    move-object v1, p0

    .local v1, "label":Ljava/lang/String;
    move-object v2, p1

    .local v2, "cur":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<*>;"
    move v3, p2

    .local v3, "showAge":Z
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->getResource()Lcom/sun/prism/impl/ManagedResource;

    move-result-object v5

    move-object v4, v5

    .line 249
    .local v4, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "%s: %s (size=%,d)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v4

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    move-object v10, v2

    iget-wide v10, v10, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v5

    .line 250
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 251
    move v5, v3

    if-eqz v5, :cond_0

    .line 252
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, " (age=%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v5

    .line 254
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->isPermanent()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, " perm"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, " lock"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 256
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/prism/impl/ManagedResource;->isInteresting()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, " int"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 258
    :cond_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 259
    return-void
.end method


# virtual methods
.method public cleanup(J)Z
    .locals 25

    .prologue
    .line 118
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "needed":J
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide/from16 v16, v2

    add-long v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_0

    const/4 v14, 0x1

    move v1, v14

    .line 193
    .end local v1    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    :goto_0
    return v1

    .line 119
    .restart local v1    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide v4, v14

    .line 120
    .local v4, "wasused":J
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v14

    const-wide/16 v16, 0x10

    div-long v14, v14, v16

    move-wide v6, v14

    .line 121
    .local v6, "wanted":J
    move-wide v14, v6

    move-wide/from16 v16, v2

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    .line 122
    move-wide v14, v2

    move-wide v6, v14

    .line 124
    :cond_1
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_2

    .line 125
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "Need %,d (hoping for %,d) from pool: %s\n"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-wide/from16 v19, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x2

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 126
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 134
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sun/prism/impl/Disposer;->cleanUp()V

    .line 135
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_3

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pruning obsolete in pool: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    :cond_3
    move-object v14, v1

    invoke-static {}, Lcom/sun/prism/impl/BaseResourcePool$$Lambda$1;->lambdaFactory$()Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->cleanup(Lcom/sun/prism/impl/BaseResourcePool$Predicate;)V

    .line 137
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide/from16 v16, v6

    add-long v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->target()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_5

    const/4 v14, 0x1

    move v8, v14

    .line 190
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_4

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_4
    move v14, v8

    move v1, v14

    goto/16 :goto_0

    .line 141
    :cond_5
    const/4 v14, 0x0

    move v8, v14

    .local v8, "stage":I
    :goto_1
    move v14, v8

    :try_start_1
    sget-object v15, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    array-length v15, v15

    if-ge v14, v15, :cond_9

    .line 142
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_6

    .line 143
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/sun/prism/impl/BaseResourcePool;->stageReasons:[Ljava/lang/String;

    move/from16 v17, v8

    aget-object v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " in pool: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    :cond_6
    move-object v14, v1

    sget-object v15, Lcom/sun/prism/impl/BaseResourcePool;->stageTesters:[Lcom/sun/prism/impl/BaseResourcePool$Predicate;

    move/from16 v16, v8

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->cleanup(Lcom/sun/prism/impl/BaseResourcePool$Predicate;)V

    .line 146
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide/from16 v16, v6

    add-long v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->target()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_8

    const/4 v14, 0x1

    move v9, v14

    .line 190
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_7

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_7
    move v14, v9

    move v1, v14

    goto/16 :goto_0

    .line 141
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 151
    :cond_9
    move-object v14, v1

    :try_start_2
    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v16

    sub-long v14, v14, v16

    move-wide v8, v14

    .line 152
    .local v8, "rem":J
    move-wide v14, v6

    move-wide/from16 v16, v8

    cmp-long v14, v14, v16

    if-lez v14, :cond_a

    .line 153
    move-wide v14, v2

    move-wide v6, v14

    .line 155
    :cond_a
    move-wide v14, v6

    move-wide/from16 v16, v8

    cmp-long v14, v14, v16

    if-gtz v14, :cond_10

    .line 156
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->origTarget()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x20

    div-long v14, v14, v16

    move-wide v10, v14

    .line 157
    .local v10, "grow":J
    move-wide v14, v10

    move-wide/from16 v16, v6

    cmp-long v14, v14, v16

    if-gez v14, :cond_f

    .line 158
    move-wide v14, v6

    move-wide v10, v14

    .line 162
    :cond_b
    :goto_2
    move-object v14, v1

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v15

    move-wide/from16 v17, v10

    add-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->setTarget(J)V

    .line 163
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-nez v14, :cond_c

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v14, :cond_d

    .line 164
    :cond_c
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "Growing pool %s target to %,d\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 166
    :cond_d
    const/4 v14, 0x1

    move v12, v14

    .line 190
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_e

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_e
    move v14, v12

    move v1, v14

    goto/16 :goto_0

    .line 159
    :cond_f
    move-wide v14, v10

    move-wide/from16 v16, v8

    cmp-long v14, v14, v16

    if-lez v14, :cond_b

    .line 160
    move-wide v14, v8

    move-wide v10, v14

    goto/16 :goto_2

    .line 173
    .end local v10    # "grow":J
    :cond_10
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_3
    move v14, v10

    const/4 v15, 0x2

    if-ge v14, v15, :cond_16

    .line 174
    move-object v14, v1

    move v15, v10

    if-lez v15, :cond_14

    const/4 v15, 0x1

    :goto_4
    :try_start_3
    invoke-direct {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->pruneLastChance(Z)V

    .line 175
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide/from16 v16, v2

    add-long v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_15

    .line 176
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v14

    move-wide/from16 v16, v2

    add-long v14, v14, v16

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_12

    .line 177
    move-object v14, v1

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v15

    move-wide/from16 v17, v2

    add-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Lcom/sun/prism/impl/BaseResourcePool;->setTarget(J)V

    .line 178
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-nez v14, :cond_11

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v14, :cond_12

    .line 179
    :cond_11
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "Growing pool %s target to %,d\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v14

    .line 182
    :cond_12
    const/4 v14, 0x1

    move v11, v14

    .line 190
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_13

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_13
    move v14, v11

    move v1, v14

    goto/16 :goto_0

    .line 174
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 173
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 188
    :cond_16
    const/4 v14, 0x0

    move v10, v14

    .line 190
    .end local v10    # "i":I
    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_17

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_17
    move v14, v10

    move v1, v14

    goto/16 :goto_0

    .line 190
    .end local v8    # "rem":J
    :catchall_0
    move-exception v14

    move-object v13, v14

    sget-boolean v14, Lcom/sun/prism/impl/PrismSettings;->poolDebug:Z

    if-eqz v14, :cond_18

    .line 191
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v15, "cleaned up %,d from pool: %s\n"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x0

    move-wide/from16 v19, v4

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v21

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x1

    move-object/from16 v19, v1

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v14

    .line 192
    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 193
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v14}, Ljava/io/PrintStream;->println()V

    :cond_18
    move-object v14, v13

    throw v14
.end method

.method public freeDisposalRequestedAndCheckResources(Z)V
    .locals 10

    .prologue
    .line 278
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move v2, p1

    .local v2, "forgiveStaleLocks":Z
    const/4 v7, 0x0

    move v3, v7

    .line 279
    .local v3, "anyLockedResources":Z
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v4, v7

    .line 280
    .local v4, "prev":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v5, v7

    .line 281
    .local v5, "cur":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    :goto_0
    move-object v7, v5

    if-eqz v7, :cond_4

    .line 282
    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->getResource()Lcom/sun/prism/impl/ManagedResource;

    move-result-object v7

    move-object v6, v7

    .line 283
    .local v6, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/prism/impl/ManagedResource;->_isgone(Lcom/sun/prism/impl/ManagedResource;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 284
    move-object v7, v1

    move-object v8, v5

    iget-wide v8, v8, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    invoke-virtual {v7, v8, v9}, Lcom/sun/prism/impl/BaseResourcePool;->recordFree(J)V

    .line 285
    move-object v7, v5

    iget-object v7, v7, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v5, v7

    .line 286
    move-object v7, v4

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 302
    :goto_1
    goto :goto_0

    .line 288
    :cond_0
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/prism/impl/ManagedResource;->isPermanent()Z

    move-result v7

    if-nez v7, :cond_2

    .line 289
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/prism/impl/ManagedResource;->isLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/prism/impl/ManagedResource;->wasMismatched()Z

    move-result v7

    if-nez v7, :cond_1

    .line 290
    move v7, v2

    if-eqz v7, :cond_3

    .line 291
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/prism/impl/ManagedResource;->unlockall()V

    .line 297
    :cond_1
    :goto_2
    move-object v7, v6

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Lcom/sun/prism/impl/ManagedResource;->bumpAge(I)V

    .line 299
    :cond_2
    move-object v7, v5

    move-object v4, v7

    .line 300
    move-object v7, v5

    iget-object v7, v7, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v5, v7

    goto :goto_1

    .line 293
    :cond_3
    move-object v7, v6

    invoke-virtual {v7}, Lcom/sun/prism/impl/ManagedResource;->setMismatched()V

    .line 294
    const/4 v7, 0x1

    move v3, v7

    goto :goto_2

    .line 304
    .end local v6    # "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<*>;"
    :cond_4
    sget-boolean v7, Lcom/sun/prism/impl/PrismSettings;->poolStats:Z

    if-nez v7, :cond_5

    move v7, v3

    if-eqz v7, :cond_7

    .line 305
    :cond_5
    move v7, v3

    if-eqz v7, :cond_6

    .line 306
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Outstanding resource locks detected:"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    :cond_6
    move-object v7, v1

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/prism/impl/BaseResourcePool;->printSummary(Z)V

    .line 309
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    .line 311
    :cond_7
    return-void
.end method

.method public isManagerThread()Z
    .locals 3

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourcePool;->managerThread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final managed()J
    .locals 3

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return-wide v0
.end method

.method public final max()J
    .locals 3

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/impl/BaseResourcePool;->maxSize:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return-wide v0
.end method

.method public final origTarget()J
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/impl/BaseResourcePool;->origTarget:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return-wide v0
.end method

.method public prepareForAllocation(J)Z
    .locals 7

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide v1, p1

    .local v1, "size":J
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/impl/BaseResourcePool;->cleanup(J)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return v0
.end method

.method public printSummary(Z)V
    .locals 32

    .prologue
    .line 318
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move/from16 v4, p1

    .local v4, "printlocksources":Z
    const/16 v24, 0x0

    move/from16 v5, v24

    .line 319
    .local v5, "numgone":I
    const/16 v24, 0x0

    move/from16 v6, v24

    .line 320
    .local v6, "numlocked":I
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 321
    .local v7, "numpermanent":I
    const/16 v24, 0x0

    move/from16 v8, v24

    .line 322
    .local v8, "numinteresting":I
    const/16 v24, 0x0

    move/from16 v9, v24

    .line 323
    .local v9, "nummismatched":I
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 324
    .local v10, "numancient":I
    const-wide/16 v24, 0x0

    move-wide/from16 v11, v24

    .line 325
    .local v11, "total_age":J
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 326
    .local v13, "total":I
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 328
    .local v14, "trackLockSources":Z
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 329
    .local v15, "percentUsed":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v17, v24

    .line 330
    .local v17, "percentTarget":D
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v25, "%s: %,d used (%.1f%%), %,d target (%.1f%%), %,d max\n"

    const/16 v26, 0x6

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x0

    move-object/from16 v29, v3

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x1

    move-object/from16 v29, v3

    .line 331
    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseResourcePool;->used()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x2

    move-wide/from16 v29, v15

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x3

    move-object/from16 v29, v3

    .line 332
    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseResourcePool;->target()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x4

    move-wide/from16 v29, v17

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x5

    move-object/from16 v29, v3

    .line 333
    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/impl/BaseResourcePool;->max()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v27, v28

    .line 330
    invoke-virtual/range {v24 .. v26}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v24

    .line 335
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object/from16 v24, v0

    move-object/from16 v19, v24

    .local v19, "cur":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    :goto_0
    move-object/from16 v24, v19

    if-eqz v24, :cond_8

    .line 336
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->getResource()Lcom/sun/prism/impl/ManagedResource;

    move-result-object v24

    move-object/from16 v20, v24

    .line 337
    .local v20, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    add-int/lit8 v13, v13, 0x1

    .line 338
    move-object/from16 v24, v20

    if-eqz v24, :cond_0

    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->isValid()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->isDisposalRequested()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 339
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 335
    :cond_1
    :goto_1
    move-object/from16 v24, v19

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object/from16 v24, v0

    move-object/from16 v19, v24

    goto :goto_0

    .line 341
    :cond_2
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->getAge()I

    move-result v24

    move/from16 v21, v24

    .line 342
    .local v21, "a":I
    move-wide/from16 v24, v11

    move/from16 v26, v21

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v11, v24

    .line 343
    move/from16 v24, v21

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    .line 344
    add-int/lit8 v10, v10, 0x1

    .line 346
    :cond_3
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->wasMismatched()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 347
    add-int/lit8 v9, v9, 0x1

    .line 349
    :cond_4
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->isPermanent()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 350
    add-int/lit8 v7, v7, 0x1

    .line 360
    :cond_5
    :goto_2
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->isInteresting()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 361
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 351
    :cond_6
    move-object/from16 v24, v20

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/impl/ManagedResource;->isLocked()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 352
    add-int/lit8 v6, v6, 0x1

    .line 353
    move/from16 v24, v14

    if-eqz v24, :cond_5

    move/from16 v24, v4

    if-eqz v24, :cond_5

    .line 354
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/ManagedResource;->lockedFrom:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v22, v24

    :goto_3
    move-object/from16 v24, v22

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v24, v22

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Throwable;

    move-object/from16 v23, v24

    .line 355
    .local v23, "th":Ljava/lang/Throwable;
    move-object/from16 v24, v23

    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 356
    goto :goto_3

    .line 357
    .end local v23    # "th":Ljava/lang/Throwable;
    :cond_7
    move-object/from16 v24, v20

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/prism/impl/ManagedResource;->lockedFrom:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 366
    .end local v20    # "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    .end local v21    # "a":I
    :cond_8
    move-wide/from16 v24, v11

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v13

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-wide/from16 v19, v24

    .line 367
    .local v19, "avg_age":D
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v31, v25

    move-object/from16 v25, v31

    move-object/from16 v26, v31

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v13

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " total resources being managed"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    sget-object v24, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v25, "average resource age is %.1f frames\n"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v31, v26

    move-object/from16 v26, v31

    move-object/from16 v27, v31

    const/16 v28, 0x0

    move-wide/from16 v29, v19

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v24 .. v26}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-result-object v24

    .line 369
    move/from16 v24, v10

    move/from16 v25, v13

    const-string v26, "at maximum supported age"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 370
    move/from16 v24, v7

    move/from16 v25, v13

    const-string v26, "marked permanent"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 371
    move/from16 v24, v9

    move/from16 v25, v13

    const-string v26, "have had mismatched locks"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 372
    move/from16 v24, v6

    move/from16 v25, v13

    const-string v26, "locked"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 373
    move/from16 v24, v8

    move/from16 v25, v13

    const-string v26, "contain interesting data"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 374
    move/from16 v24, v5

    move/from16 v25, v13

    const-string v26, "disappeared"

    invoke-static/range {v24 .. v26}, Lcom/sun/prism/impl/BaseResourcePool;->printpoolpercent(IILjava/lang/String;)V

    .line 375
    return-void
.end method

.method public final recordAllocated(J)V
    .locals 9

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide v1, p1

    .local v1, "size":J
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    move-wide v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    .line 436
    return-void
.end method

.method public final recordFree(J)V
    .locals 9

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide v1, p1

    .local v1, "size":J
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-wide v4, v4, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    move-wide v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    .line 469
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 470
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Negative resource amount"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 472
    :cond_0
    return-void
.end method

.method public final resourceFreed(Lcom/sun/prism/impl/ManagedResource;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, p1

    .local v1, "freed":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v2, v5

    .line 448
    .local v2, "prev":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    move-object v5, v2

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 449
    .local v3, "cur":Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;, "Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList<TT;>;"
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 450
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->getResource()Lcom/sun/prism/impl/ManagedResource;

    move-result-object v5

    move-object v4, v5

    .line 451
    .local v4, "res":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 452
    :cond_0
    move-object v5, v0

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->size:J

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool;->recordFree(J)V

    .line 453
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 454
    move-object v5, v2

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    .line 455
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 456
    return-void

    .line 459
    :cond_1
    move-object v5, v3

    move-object v2, v5

    .line 460
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->next:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v3, v5

    .line 462
    :cond_2
    goto :goto_0

    .line 463
    .end local v4    # "res":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unmanaged resource freed from pool "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final resourceManaged(Lcom/sun/prism/impl/ManagedResource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/impl/ManagedResource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, p1

    .local v1, "mr":Lcom/sun/prism/impl/ManagedResource;, "Lcom/sun/prism/impl/ManagedResource<TT;>;"
    move-object v4, v0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/prism/impl/ManagedResource;->resource:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/sun/prism/impl/BaseResourcePool;->size(Ljava/lang/Object;)J

    move-result-wide v4

    move-wide v2, v4

    .line 441
    .local v2, "size":J
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/BaseResourcePool;->resourceHead:Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/prism/impl/BaseResourcePool$WeakLinkedList;->insert(Lcom/sun/prism/impl/ManagedResource;J)V

    .line 442
    move-object v4, v0

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/prism/impl/BaseResourcePool;->recordAllocated(J)V

    .line 443
    return-void
.end method

.method public final setTarget(J)V
    .locals 11

    .prologue
    .line 417
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-wide v2, p1

    .local v2, "newTarget":J
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/impl/BaseResourcePool;->maxSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 418
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " larger than max "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/prism/impl/BaseResourcePool;->maxSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :cond_0
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/prism/impl/BaseResourcePool;->origTarget:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 422
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " smaller than initial target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    iget-wide v7, v7, Lcom/sun/prism/impl/BaseResourcePool;->origTarget:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    :cond_1
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/prism/impl/BaseResourcePool;->curTarget:J

    .line 426
    return-void
.end method

.method public final target()J
    .locals 3

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/impl/BaseResourcePool;->curTarget:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    return-wide v0
.end method

.method public used()J
    .locals 4

    .prologue
    .line 394
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourcePool;->sharedParent:Lcom/sun/prism/impl/ResourcePool;

    if-eqz v2, :cond_0

    .line 395
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourcePool;->sharedParent:Lcom/sun/prism/impl/ResourcePool;

    invoke-interface {v2}, Lcom/sun/prism/impl/ResourcePool;->used()J

    move-result-wide v2

    move-wide v1, v2

    .line 397
    .end local v1    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/prism/impl/BaseResourcePool;, "Lcom/sun/prism/impl/BaseResourcePool<TT;>;"
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/prism/impl/BaseResourcePool;->managedSize:J

    move-wide v1, v2

    goto :goto_0
.end method
