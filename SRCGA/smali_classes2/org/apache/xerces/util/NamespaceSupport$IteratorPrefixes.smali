.class public final Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "IteratorPrefixes"
.end annotation


# instance fields
.field private counter:I

.field private prefixes:[Ljava/lang/String;

.field private size:I

.field final synthetic this$0:Lorg/apache/xerces/util/NamespaceSupport;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    move-object v1, p1

    .local v1, "this$0":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v2, p2

    .local v2, "prefixes":[Ljava/lang/String;
    move v3, p3

    .local v3, "size":I
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->this$0:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 396
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->counter:I

    .line 397
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->size:I

    .line 403
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->prefixes:[Ljava/lang/String;

    .line 404
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->size:I

    .line 405
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->counter:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->counter:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v1, v2, :cond_0

    .line 419
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->this$0:Lorg/apache/xerces/util/NamespaceSupport;

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->counter:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->counter:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    return-object v0

    .line 421
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "Illegal access to Namespace prefixes enumeration."

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    .line 426
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->size:I

    if-ge v3, v4, :cond_0

    .line 427
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;->prefixes:[Ljava/lang/String;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 428
    move-object v3, v1

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    return-object v0
.end method
