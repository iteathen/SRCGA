.class Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TE;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, p2

    .local v2, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 105
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 109
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 110
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 166
    const/4 v7, 0x1

    move v0, v7

    .line 190
    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    :goto_0
    return v0

    .line 169
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 170
    .local v2, "propertyA1":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 171
    .local v3, "propertyA2":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v3

    if-nez v7, :cond_2

    .line 172
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 175
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    if-eqz v7, :cond_6

    .line 176
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;

    move-object v4, v7

    .line 177
    .local v4, "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 178
    .local v5, "propertyB1":Ljava/lang/Object;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 179
    .local v6, "propertyB2":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v6

    if-nez v7, :cond_4

    .line 180
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 183
    :cond_4
    move-object v7, v2

    move-object v8, v5

    if-ne v7, v8, :cond_5

    move-object v7, v3

    move-object v8, v6

    if-ne v7, v8, :cond_5

    .line 184
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 186
    :cond_5
    move-object v7, v2

    move-object v8, v6

    if-ne v7, v8, :cond_6

    move-object v7, v3

    move-object v8, v5

    if-ne v7, v8, :cond_6

    .line 187
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 190
    .end local v4    # "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;
    .end local v5    # "propertyB1":Ljava/lang/Object;
    .end local v6    # "propertyB2":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v1, v5

    .line 157
    .local v1, "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    move-object v2, v5

    .line 158
    .local v2, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 159
    .local v3, "hc1":I
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 160
    .local v4, "hc2":I
    move v5, v3

    move v6, v4

    mul-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    return v0

    .line 158
    .end local v3    # "hc1":I
    .end local v4    # "hc2":I
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_0

    .line 159
    .restart local v3    # "hc1":I
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    if-nez v6, :cond_2

    .line 116
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    move-object v2, v6

    .line 117
    .local v2, "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    move-object v3, v6

    .line 118
    .local v3, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_3

    .line 119
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 120
    move-object v6, v2

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 122
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 123
    move-object v6, v3

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 147
    .end local v2    # "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    .end local v3    # "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_2
    :goto_0
    return-void

    .line 127
    .restart local v2    # "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    .restart local v3    # "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 128
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v7

    if-ne v6, v7, :cond_5

    move-object v6, v3

    :goto_1
    move-object v4, v6

    .line 129
    .local v4, "dest":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_4
    :goto_2
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 130
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 131
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v8

    invoke-interface {v6, v7, v8}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 132
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v10

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v6

    goto :goto_2

    .line 128
    .end local v4    # "dest":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_5
    move-object v6, v2

    goto :goto_1

    .line 134
    .restart local v4    # "dest":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_6
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 135
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v9

    add-int/2addr v8, v9

    invoke-interface {v6, v7, v8}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 137
    :cond_7
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 138
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_2

    .line 143
    :cond_8
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    .line 144
    goto/16 :goto_0

    .line 143
    .end local v4    # "dest":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->updating:Z

    move-object v6, v5

    throw v6
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$ListContentBinding<TE;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
