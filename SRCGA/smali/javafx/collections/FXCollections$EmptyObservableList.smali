.class Ljavafx/collections/FXCollections$EmptyObservableList;
.super Ljava/util/AbstractList;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyObservableList"
.end annotation

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


# static fields
.field private static final iterator:Ljava/util/ListIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 681
    new-instance v0, Ljavafx/collections/FXCollections$EmptyObservableList$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/collections/FXCollections$EmptyObservableList$1;-><init>()V

    sput-object v0, Ljavafx/collections/FXCollections$EmptyObservableList;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 729
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractList;-><init>()V

    .line 730
    return-void
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
    .line 810
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public final addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 734
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 743
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    .local p1, "o":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    const/4 v2, -0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    sget-object v1, Ljavafx/collections/FXCollections$EmptyObservableList;->iterator:Ljava/util/ListIterator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    const/4 v2, -0x1

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    sget-object v1, Ljavafx/collections/FXCollections$EmptyObservableList;->iterator:Ljava/util/ListIterator;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 794
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 795
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 797
    :cond_0
    sget-object v2, Ljavafx/collections/FXCollections$EmptyObservableList;->iterator:Ljava/util/ListIterator;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 825
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public final removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 0
    .param p1, "listener"    # Ljavafx/beans/InvalidationListener;

    .prologue
    .line 738
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 747
    .local p0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    .local p1, "o":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
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
    .line 830
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 820
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 815
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
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
    .line 751
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v3, v1

    if-nez v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    .line 803
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 805
    :cond_1
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/FXCollections$EmptyObservableList;, "Ljavafx/collections/FXCollections$EmptyObservableList<TE;>;"
    return-object v0
.end method
