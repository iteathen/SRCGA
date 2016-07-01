.class public Ljavafx/scene/Group;
.super Ljavafx/scene/Parent;
.source "Group.java"


# annotations
.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "children"
.end annotation


# instance fields
.field private autoSizeChildren:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Parent;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavafx/scene/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, p1

    .local v1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Ljavafx/scene/Node;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Parent;-><init>()V

    .line 101
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 102
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Parent;-><init>()V

    .line 90
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 91
    return-void
.end method


# virtual methods
.method public final autoSizeChildrenProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group;->autoSizeChildren:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 127
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Group$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Group$1;-><init>(Ljavafx/scene/Group;Z)V

    iput-object v2, v1, Ljavafx/scene/Group;->autoSizeChildren:Ljavafx/beans/property/BooleanProperty;

    .line 145
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group;->autoSizeChildren:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Group;
    return-object v0
.end method

.method public getChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Group;
    return-object v0
.end method

.method protected impl_computeLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Group;->layout()V

    .line 165
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Parent;->impl_computeLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Group;
    return-object v0
.end method

.method public final isAutoSizeChildren()Z
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group;->autoSizeChildren:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Group;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Group;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Group;->autoSizeChildren:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Group;->isAutoSizeChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Parent;->layoutChildren()V

    .line 228
    :cond_0
    return-void
.end method

.method public minHeight(D)D
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Group;->prefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Group;
    return-wide v0
.end method

.method public minWidth(D)D
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Group;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Group;
    return-wide v0
.end method

.method public prefHeight(D)D
    .locals 11

    .prologue
    .line 201
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Group;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->isAutoSizeChildren()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->layout()V

    .line 204
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 205
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/Group;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Group;
    :cond_2
    move-wide v6, v4

    goto :goto_0
.end method

.method public prefWidth(D)D
    .locals 11

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Group;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->isAutoSizeChildren()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->layout()V

    .line 184
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Group;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 185
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    :cond_1
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/Group;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Group;
    :cond_2
    move-wide v6, v4

    goto :goto_0
.end method

.method public final setAutoSizeChildren(Z)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Group;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Group;->autoSizeChildrenProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 119
    return-void
.end method
