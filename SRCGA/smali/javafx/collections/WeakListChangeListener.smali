.class public final Ljavafx/collections/WeakListChangeListener;
.super Ljava/lang/Object;
.source "WeakListChangeListener.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
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
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/collections/ListChangeListener",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ListChangeListener;)V
    .locals 7
    .param p1    # Ljavafx/collections/ListChangeListener;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "listener"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/WeakListChangeListener;, "Ljavafx/collections/WeakListChangeListener<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v2, v1

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Listener must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/collections/WeakListChangeListener;->ref:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/WeakListChangeListener;, "Ljavafx/collections/WeakListChangeListener<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/WeakListChangeListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ListChangeListener;

    move-object v2, v3

    .line 87
    .local v2, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<TE;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 88
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    goto :goto_0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/WeakListChangeListener;, "Ljavafx/collections/WeakListChangeListener<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/WeakListChangeListener;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/WeakListChangeListener;, "Ljavafx/collections/WeakListChangeListener<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/WeakListChangeListener;, "Ljavafx/collections/WeakListChangeListener<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
