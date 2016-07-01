.class public Lcom/sun/xml/stream/util/ReadOnlyIterator;
.super Ljava/lang/Object;
.source "ReadOnlyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    move-object v1, p1

    .local v1, "itr":Ljava/util/Iterator;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 60
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    .line 61
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 68
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .line 69
    .end local v0    # "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 77
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 78
    .end local v0    # "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/util/ReadOnlyIterator;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Remove operation is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
