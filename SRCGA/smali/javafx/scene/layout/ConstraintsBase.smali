.class public abstract Ljavafx/scene/layout/ConstraintsBase;
.super Ljava/lang/Object;
.source "ConstraintsBase.java"


# static fields
.field public static final CONSTRAIN_TO_PREF:D = -Infinity


# instance fields
.field impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ConstraintsBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;-><init>()V

    iput-object v2, v1, Ljavafx/scene/layout/ConstraintsBase;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    .line 54
    return-void
.end method


# virtual methods
.method add(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ConstraintsBase;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/ConstraintsBase;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->add(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method remove(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ConstraintsBase;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Parent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/ConstraintsBase;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->remove(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method protected requestLayout()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ConstraintsBase;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/layout/ConstraintsBase;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 70
    .local v1, "nodeIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavafx/scene/Parent;>;"
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Parent;

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method
