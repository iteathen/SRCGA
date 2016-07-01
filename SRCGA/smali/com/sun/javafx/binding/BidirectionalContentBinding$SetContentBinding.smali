.class Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
.super Ljava/lang/Object;
.source "BidirectionalContentBinding.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/SetChangeListener",
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
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "list1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, p2

    .local v2, "list2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 199
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 203
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 204
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 205
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 252
    const/4 v7, 0x1

    move v0, v7

    .line 276
    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    :goto_0
    return v0

    .line 255
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 256
    .local v2, "propertyA1":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 257
    .local v3, "propertyA2":Ljava/lang/Object;
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v3

    if-nez v7, :cond_2

    .line 258
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 261
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    if-eqz v7, :cond_6

    .line 262
    move-object v7, v1

    check-cast v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;

    move-object v4, v7

    .line 263
    .local v4, "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 264
    .local v5, "propertyB1":Ljava/lang/Object;
    move-object v7, v4

    iget-object v7, v7, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 265
    .local v6, "propertyB2":Ljava/lang/Object;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v6

    if-nez v7, :cond_4

    .line 266
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 269
    :cond_4
    move-object v7, v2

    move-object v8, v5

    if-ne v7, v8, :cond_5

    move-object v7, v3

    move-object v8, v6

    if-ne v7, v8, :cond_5

    .line 270
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 272
    :cond_5
    move-object v7, v2

    move-object v8, v6

    if-ne v7, v8, :cond_6

    move-object v7, v3

    move-object v8, v5

    if-ne v7, v8, :cond_6

    .line 273
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 276
    .end local v4    # "otherBinding":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;
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
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    move-object v1, v5

    .line 243
    .local v1, "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    move-object v2, v5

    .line 244
    .local v2, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    .line 245
    .local v3, "hc1":I
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    move v4, v5

    .line 246
    .local v4, "hc2":I
    move v5, v3

    move v6, v4

    mul-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    return v0

    .line 244
    .end local v3    # "hc1":I
    .end local v4    # "hc2":I
    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_0

    .line 245
    .restart local v3    # "hc1":I
    :cond_1
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    if-nez v6, :cond_2

    .line 210
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableSet;

    move-object v2, v6

    .line 211
    .local v2, "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableSet;

    move-object v3, v6

    .line 212
    .local v3, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v3

    if-nez v6, :cond_3

    .line 213
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 214
    move-object v6, v2

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 216
    :cond_1
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 217
    move-object v6, v3

    move-object v7, v0

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 233
    .end local v2    # "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    .end local v3    # "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    :cond_2
    :goto_0
    return-void

    .line 221
    .restart local v2    # "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    .restart local v3    # "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 222
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v7

    if-ne v6, v7, :cond_4

    move-object v6, v3

    :goto_1
    move-object v4, v6

    .line 223
    .local v4, "dest":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 224
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 229
    :goto_2
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    .line 230
    goto :goto_0

    .line 222
    .end local v4    # "dest":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_4
    move-object v6, v2

    goto :goto_1

    .line 226
    .restart local v4    # "dest":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :cond_5
    move-object v6, v4

    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_2

    .line 229
    .end local v4    # "dest":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->updating:Z

    move-object v6, v5

    throw v6
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/BidirectionalContentBinding$SetContentBinding<TE;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
