.class public abstract Ljavafx/scene/shape/PathElement;
.super Ljava/lang/Object;
.source "PathElement.java"


# instance fields
.field private absolute:Ljavafx/beans/property/BooleanProperty;

.field impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/util/WeakReferenceQueue;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/PathElement;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    return-void
.end method


# virtual methods
.method public final absoluteProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement;->absolute:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 97
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/PathElement$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/PathElement$1;-><init>(Ljavafx/scene/shape/PathElement;)V

    iput-object v2, v1, Ljavafx/scene/shape/PathElement;->absolute:Ljavafx/beans/property/BooleanProperty;

    .line 113
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement;->absolute:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/PathElement;
    return-object v0
.end method

.method addNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/PathElement;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->add(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method abstract addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
.end method

.method public abstract impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final isAbsolute()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement;->absolute:Ljavafx/beans/property/BooleanProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/PathElement;->absolute:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/PathElement;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/PathElement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeNode(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/PathElement;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/util/WeakReferenceQueue;->remove(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public final setAbsolute(Z)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/PathElement;->absoluteProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 89
    return-void
.end method

.method u()V
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElement;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/PathElement;->impl_nodes:Lcom/sun/javafx/util/WeakReferenceQueue;

    invoke-virtual {v2}, Lcom/sun/javafx/util/WeakReferenceQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    .line 62
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/shape/Path;

    invoke-virtual {v2}, Ljavafx/scene/shape/Path;->markPathDirty()V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
