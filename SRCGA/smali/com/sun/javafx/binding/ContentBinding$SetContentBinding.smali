.class Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/SetChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
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
.field private final setRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 160
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 191
    const/4 v5, 0x1

    move v0, v5

    .line 204
    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    :goto_0
    return v0

    .line 194
    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object v2, v5

    .line 195
    .local v2, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    .line 196
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 199
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    if-eqz v5, :cond_3

    .line 200
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;

    move-object v3, v5

    .line 201
    .local v3, "other":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<*>;"
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object v4, v5

    .line 202
    .local v4, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    move-object v5, v2

    move-object v6, v4

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 204
    .end local v3    # "other":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<*>;"
    .end local v4    # "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    .line 185
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v2, v3

    .line 166
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 167
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->getSet()Ljavafx/collections/ObservableSet;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/SetChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->getElementRemoved()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 172
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/SetChangeListener$Change;->getElementAdded()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;->setRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$SetContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$SetContentBinding<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
