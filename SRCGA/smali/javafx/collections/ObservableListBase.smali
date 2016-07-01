.class public abstract Ljavafx/collections/ObservableListBase;
.super Ljava/util/AbstractList;
.source "ObservableListBase.java"

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
.field private final changeBuilder:Ljavafx/collections/ListChangeBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeBuilder",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractList;-><init>()V

    .line 93
    move-object v1, v0

    new-instance v2, Ljavafx/collections/ListChangeBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/collections/ListChangeBuilder;-><init>(Ljavafx/collections/ObservableListBase;)V

    iput-object v2, v1, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    return-void
.end method


# virtual methods
.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/collections/ObservableListBase;->addAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    return v0
.end method

.method public final addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 210
    return-void
.end method

.method public final addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 220
    return-void
.end method

.method protected final beginChange()V
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeBuilder;->beginChange()V

    .line 192
    return-void
.end method

.method protected final endChange()V
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    invoke-virtual {v1}, Ljavafx/collections/ListChangeBuilder;->endChange()V

    .line 205
    return-void
.end method

.method protected final fireChange(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/ListListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 233
    return-void
.end method

.method protected final hasListeners()Z
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    invoke-static {v1}, Lcom/sun/javafx/collections/ListListenerHelper;->hasListeners(Lcom/sun/javafx/collections/ListListenerHelper;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    return v0
.end method

.method protected final nextAdd(II)V
    .locals 6

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextAdd(II)V

    .line 179
    return-void
.end method

.method protected final nextPermutation(II[I)V
    .locals 8

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "perm":[I
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/collections/ListChangeBuilder;->nextPermutation(II[I)V

    .line 166
    return-void
.end method

.method protected final nextRemove(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "removed":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextRemove(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method protected final nextRemove(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextRemove(ILjava/util/List;)V

    .line 139
    return-void
.end method

.method protected final nextReplace(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, p3

    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljavafx/collections/ListChangeBuilder;->nextReplace(IILjava/util/List;)V

    .line 128
    return-void
.end method

.method protected final nextSet(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "idx":I
    move-object v2, p2

    .local v2, "old":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ListChangeBuilder;->nextSet(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method protected final nextUpdate(I)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "pos":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ObservableListBase;->changeBuilder:Ljavafx/collections/ListChangeBuilder;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/collections/ListChangeBuilder;->nextUpdate(I)V

    .line 103
    return-void
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ObservableListBase;->removeRange(II)V

    .line 270
    return-void
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/collections/ObservableListBase;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    return v0
.end method

.method public final removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 215
    return-void
.end method

.method public final removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/ObservableListBase;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 225
    return-void
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/collections/ObservableListBase;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    return v0
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
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/collections/ObservableListBase;->setAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    return v0
.end method
