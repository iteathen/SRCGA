.class Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;
.super Ljavafx/collections/ObservableListBase;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableObservableListImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ObservableListBase",
        "<TT;>;",
        "Ljavafx/collections/ObservableList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final backingList:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "backingList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ObservableListBase;-><init>()V

    .line 927
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->backingList:Ljavafx/collections/ObservableList;

    .line 928
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;)Ljavafx/collections/ListChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->listener:Ljavafx/collections/ListChangeListener;

    .line 931
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->backingList:Ljavafx/collections/ObservableList;

    new-instance v3, Ljavafx/collections/WeakListChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v4, v5}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 932
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->lambda$new$50(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$50(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-virtual {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 930
    return-void
.end method


# virtual methods
.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 946
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->backingList:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
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
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 961
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 966
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
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
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 956
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
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
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
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
    .line 941
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;->backingList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl;, "Ljavafx/collections/FXCollections$UnmodifiableObservableListImpl<TT;>;"
    return v0
.end method
