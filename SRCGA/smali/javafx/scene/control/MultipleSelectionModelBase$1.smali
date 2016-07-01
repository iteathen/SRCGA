.class Ljavafx/scene/control/MultipleSelectionModelBase$1;
.super Ljava/lang/Object;
.source "MultipleSelectionModelBase.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MultipleSelectionModelBase;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

.field final synthetic val$map:Lcom/sun/javafx/collections/MappingChange$Map;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MultipleSelectionModelBase;Lcom/sun/javafx/collections/MappingChange$Map;)V
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$1;, "Ljavafx/scene/control/MultipleSelectionModelBase$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MultipleSelectionModelBase;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;->val$map:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$1;, "Ljavafx/scene/control/MultipleSelectionModelBase$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    move v2, v3

    .line 87
    .local v2, "hasRealChangeOccurred":Z
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    if-nez v3, :cond_2

    .line 88
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 91
    :cond_2
    move v3, v2

    if-eqz v3, :cond_3

    .line 92
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    if-eqz v3, :cond_4

    .line 93
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    invoke-static {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->access$000(Ljavafx/scene/control/MultipleSelectionModelBase;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    iget-object v4, v4, Ljavafx/scene/control/MultipleSelectionModelBase;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 99
    :cond_3
    :goto_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 100
    return-void

    .line 95
    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 96
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    invoke-static {v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->access$000(Ljavafx/scene/control/MultipleSelectionModelBase;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/collections/MappingChange;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/MultipleSelectionModelBase$1;->val$map:Lcom/sun/javafx/collections/MappingChange$Map;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/MultipleSelectionModelBase$1;->this$0:Ljavafx/scene/control/MultipleSelectionModelBase;

    invoke-static {v8}, Ljavafx/scene/control/MultipleSelectionModelBase;->access$000(Ljavafx/scene/control/MultipleSelectionModelBase;)Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/MappingChange;-><init>(Ljavafx/collections/ListChangeListener$Change;Lcom/sun/javafx/collections/MappingChange$Map;Ljavafx/collections/ObservableList;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_2
.end method
