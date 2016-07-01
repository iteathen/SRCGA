.class Ljavafx/scene/control/ToggleGroup$2;
.super Lcom/sun/javafx/collections/VetoableListDecorator;
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
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<",
        "Ljavafx/scene/control/Toggle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ToggleGroup;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ToggleGroup;Ljavafx/collections/ObservableList;)V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToggleGroup;
    move-object v2, p2

    .local v2, "x0":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/Toggle;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ToggleGroup$2;->this$0:Ljavafx/scene/control/ToggleGroup;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/VetoableListDecorator;-><init>(Ljavafx/collections/ObservableList;)V

    return-void
.end method


# virtual methods
.method protected varargs onProposedChange(Ljava/util/List;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/Toggle;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleGroup$2;
    move-object v1, p1

    .local v1, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/control/Toggle;>;"
    move-object v2, p2

    .local v2, "indexes":[I
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Toggle;

    move-object v4, v5

    .line 108
    .local v4, "t":Ljavafx/scene/control/Toggle;
    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_1

    move-object v5, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ToggleGroup$2;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 110
    .line 116
    .end local v4    # "t":Ljavafx/scene/control/Toggle;
    :cond_0
    return-void

    .line 112
    .restart local v4    # "t":Ljavafx/scene/control/Toggle;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ToggleGroup$2;->this$0:Ljavafx/scene/control/ToggleGroup;

    invoke-static {v5}, Ljavafx/scene/control/ToggleGroup;->access$000(Ljavafx/scene/control/ToggleGroup;)Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Duplicate toggles are not allow in a ToggleGroup."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_2
    goto :goto_0
.end method
