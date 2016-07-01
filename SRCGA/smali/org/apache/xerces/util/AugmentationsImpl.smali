.class public Lorg/apache/xerces/util/AugmentationsImpl;
.super Ljava/lang/Object;
.source "AugmentationsImpl.java"

# interfaces
.implements Lorg/apache/xerces/xni/Augmentations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/AugmentationsImpl$LargeContainer;,
        Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;,
        Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;
    }
.end annotation


# instance fields
.field private fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/AugmentationsImpl$SmallContainer;-><init>(Lorg/apache/xerces/util/AugmentationsImpl;)V

    iput-object v2, v1, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->getItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl;
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->keys()Ljava/util/Enumeration;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl;
    return-object v0
.end method

.method public putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "item":Ljava/lang/Object;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->putItem(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 95
    .local v3, "oldValue":Ljava/lang/Object;
    move-object v4, v3

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v4}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->isFull()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v5}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->expand()Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    .line 99
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl;
    return-object v0
.end method

.method public removeAllItems()V
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->clear()V

    .line 138
    return-void
.end method

.method public removeItem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;->removeItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/AugmentationsImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/AugmentationsImpl;->fAugmentationsContainer:Lorg/apache/xerces/util/AugmentationsImpl$AugmentationsItemsContainer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/AugmentationsImpl;
    return-object v0
.end method
