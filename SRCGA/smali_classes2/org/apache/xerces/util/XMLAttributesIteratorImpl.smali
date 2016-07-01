.class public Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
.super Lorg/apache/xerces/util/XMLAttributesImpl;
.source "XMLAttributesIteratorImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected fCurrent:I

.field protected fLastReturnedItem:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    .line 74
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    aget-object v2, v2, v3

    move-object v7, v1

    move-object v8, v2

    move-object v1, v8

    move-object v2, v7

    move-object v3, v8

    iput-object v3, v2, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    return-object v0

    .line 86
    .restart local v0    # "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fLastReturnedItem:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_0

    .line 94
    move-object v1, v0

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    invoke-virtual {v1, v2}, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->removeAttributeAt(I)V

    .line 101
    return-void

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public removeAllAttributes()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/XMLAttributesIteratorImpl;
    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    .line 105
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLAttributesIteratorImpl;->fCurrent:I

    .line 106
    return-void
.end method
