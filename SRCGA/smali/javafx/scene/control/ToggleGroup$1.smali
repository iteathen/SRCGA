.class Ljavafx/scene/control/ToggleGroup$1;
.super Lcom/sun/javafx/collections/TrackableObservableList;
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
        "Lcom/sun/javafx/collections/TrackableObservableList",
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
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ToggleGroup$1;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/TrackableObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$1;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljavafx/scene/control/Toggle;>;"
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 76
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Toggle;

    move-object v3, v4

    .line 77
    .local v3, "t":Ljavafx/scene/control/Toggle;
    move-object v4, v3

    invoke-interface {v4}, Ljavafx/scene/control/Toggle;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleGroup$1;->this$0:Ljavafx/scene/control/ToggleGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 80
    :cond_0
    goto :goto_1

    .line 85
    .end local v3    # "t":Ljavafx/scene/control/Toggle;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Toggle;

    move-object v3, v4

    .line 86
    .restart local v3    # "t":Ljavafx/scene/control/Toggle;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleGroup$1;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v5, v3

    invoke-interface {v5}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 87
    move-object v4, v3

    invoke-interface {v4}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 88
    move-object v4, v3

    invoke-interface {v4}, Ljavafx/scene/control/Toggle;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 90
    :cond_2
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ToggleGroup$1;->this$0:Ljavafx/scene/control/ToggleGroup;

    invoke-interface {v4, v5}, Ljavafx/scene/control/Toggle;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 92
    :cond_3
    goto :goto_2

    .line 97
    .end local v3    # "t":Ljavafx/scene/control/Toggle;
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_3
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Toggle;

    move-object v3, v4

    .line 98
    .restart local v3    # "t":Ljavafx/scene/control/Toggle;
    move-object v4, v3

    invoke-interface {v4}, Ljavafx/scene/control/Toggle;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleGroup$1;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 100
    .line 102
    .end local v3    # "t":Ljavafx/scene/control/Toggle;
    :cond_5
    goto/16 :goto_0

    .restart local v3    # "t":Ljavafx/scene/control/Toggle;
    :cond_6
    goto :goto_3

    .line 104
    .end local v3    # "t":Ljavafx/scene/control/Toggle;
    :cond_7
    return-void
.end method
