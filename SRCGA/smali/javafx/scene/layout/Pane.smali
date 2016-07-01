.class public Ljavafx/scene/layout/Pane;
.super Ljavafx/scene/layout/Region;
.source "Pane.java"


# annotations
.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "children"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Pane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Region;-><init>()V

    .line 125
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Pane;
    move-object v1, p1

    .local v1, "children":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;-><init>()V

    .line 134
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 135
    return-void
.end method

.method static getConstraint(Ljavafx/scene/Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->hasProperties()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 113
    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 114
    move-object v3, v2

    move-object v0, v3

    .line 117
    .end local v0    # "node":Ljavafx/scene/Node;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method static setConstraint(Ljavafx/scene/Node;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 101
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Parent;->requestLayout()V

    .line 108
    :cond_0
    return-void

    .line 103
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
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
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Pane;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Region;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Pane;
    return-object v0
.end method
