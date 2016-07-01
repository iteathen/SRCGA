.class Ljavafx/collections/FXCollections$SingletonObservableList;
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
    name = "SingletonObservableList"
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


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    move-object v1, p1

    .local v1, "element":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractList;-><init>()V

    .line 844
    move-object v2, v1

    if-nez v2, :cond_0

    .line 845
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 847
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$SingletonObservableList;->element:Ljava/lang/Object;

    .line 848
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
    .line 852
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 882
    .local p0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 890
    .local p0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    .local p1, "o":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$SingletonObservableList;->element:Ljava/lang/Object;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 913
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-eqz v2, :cond_0

    .line 914
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 916
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$SingletonObservableList;->element:Ljava/lang/Object;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    return v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 867
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 886
    .local p0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 894
    .local p0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 872
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 862
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 857
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
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
    .line 898
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$SingletonObservableList;, "Ljavafx/collections/FXCollections$SingletonObservableList<TE;>;"
    return v0
.end method
