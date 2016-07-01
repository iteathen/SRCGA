.class public Lcom/sun/javafx/collections/ImmutableObservableList;
.super Ljava/util/AbstractList;
.source "ImmutableObservableList.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractList;-><init>()V

    .line 41
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    iput-object v3, v2, Lcom/sun/javafx/collections/ImmutableObservableList;->elements:[Ljava/lang/Object;

    .line 43
    return-void

    .line 41
    :cond_1
    move-object v3, v1

    move-object v4, v1

    array-length v4, v4

    .line 42
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 48
    .local p0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    .local p1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ImmutableObservableList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 100
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ImmutableObservableList;->elements:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 53
    .local p0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    .local p1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    return-void
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ImmutableObservableList;->elements:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ImmutableObservableList;, "Lcom/sun/javafx/collections/ImmutableObservableList<TE;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ImmutableObservableList;->elements:[Ljava/lang/Object;

    array-length v1, v1

    goto :goto_0
.end method
