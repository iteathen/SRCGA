.class final Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
.super Ljava/lang/Object;
.source "SelectorPartitioning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/SelectorPartitioning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PartitionKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/sun/javafx/css/SelectorPartitioning$1;)V
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/css/SelectorPartitioning$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 60
    const/4 v3, 0x0

    move v0, v3

    .line 69
    .end local v0    # "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    :goto_0
    return v0

    .line 62
    .restart local v0    # "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 63
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 65
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;

    move-object v2, v3

    .line 66
    .local v2, "other":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 69
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    const/4 v2, 0x7

    move v1, v2

    .line 75
    .local v1, "hash":I
    const/16 v2, 0x47

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 76
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    return v0

    .line 75
    .restart local v0    # "this":Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey;, "Lcom/sun/javafx/css/SelectorPartitioning$PartitionKey<TK;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
