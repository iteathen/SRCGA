.class Ljavafx/scene/control/ToggleGroup$3;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "ToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/Toggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ToggleGroup;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ToggleGroup;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$3;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ToggleGroup$3;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$3;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/Toggle;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ToggleGroup$3;->set(Ljavafx/scene/control/Toggle;)V

    return-void
.end method

.method public set(Ljavafx/scene/control/Toggle;)V
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$3;
    move-object v1, p1

    .local v1, "newSelectedToggle":Ljavafx/scene/control/Toggle;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup$3;->isBound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "A bound value cannot be set."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup$3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Toggle;

    move-object v2, v3

    .line 128
    .local v2, "old":Ljavafx/scene/control/Toggle;
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 129
    .line 139
    :goto_0
    return-void

    .line 131
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleGroup$3;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/ToggleGroup;->access$100(Ljavafx/scene/control/ToggleGroup;Ljavafx/scene/control/Toggle;Z)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 132
    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleGroup$3;->this$0:Ljavafx/scene/control/ToggleGroup;

    if-eq v3, v4, :cond_3

    :cond_2
    move-object v3, v1

    if-nez v3, :cond_6

    .line 134
    :cond_3
    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v2

    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleGroup$3;->this$0:Ljavafx/scene/control/ToggleGroup;

    if-eq v3, v4, :cond_4

    move-object v3, v2

    invoke-interface {v3}, Ljavafx/scene/control/Toggle;->isSelected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 135
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleGroup$3;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Ljavafx/scene/control/ToggleGroup;->access$100(Ljavafx/scene/control/ToggleGroup;Ljavafx/scene/control/Toggle;Z)Z

    move-result v3

    .line 137
    :cond_5
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 139
    :cond_6
    goto :goto_0
.end method
