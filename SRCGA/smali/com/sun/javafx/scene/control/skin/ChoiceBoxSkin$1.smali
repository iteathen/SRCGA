.class Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;
.super Ljava/lang/Object;
.source "ChoiceBoxSkin.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;, "Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 92
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v5

    if-gtz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 93
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->access$000(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/scene/control/ToggleGroup;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ToggleGroup;->getToggles()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 94
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->access$100(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)Ljavafx/scene/control/ContextMenu;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 95
    const/4 v5, 0x0

    move v2, v5

    .line 96
    .local v2, "i":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 97
    .local v4, "obj":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    move-object v6, v4

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljava/lang/Object;I)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_1

    .line 100
    .end local v4    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move v2, v5

    .restart local v2    # "i":I
    :goto_2
    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 102
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 103
    .local v3, "obj":Ljava/lang/Object;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    move-object v6, v3

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->access$200(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;Ljava/lang/Object;I)V

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v3    # "obj":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->access$300(Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;)V

    .line 108
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin$1;->this$0:Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ChoiceBoxSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v5}, Ljavafx/scene/control/ChoiceBox;->requestLayout()V

    .line 109
    return-void
.end method
