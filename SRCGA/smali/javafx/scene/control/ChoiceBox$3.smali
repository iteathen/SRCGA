.class Ljavafx/scene/control/ChoiceBox$3;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "ChoiceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ChoiceBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/collections/ObservableList",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field old:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/ChoiceBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ChoiceBox;)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ChoiceBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    const-string v1, "items"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$3;, "Ljavafx/scene/control/ChoiceBox$3;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox$3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableList;

    move-object v1, v4

    .line 240
    .local v1, "newItems":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$3;->old:Ljavafx/collections/ObservableList;

    move-object v5, v1

    if-eq v4, v5, :cond_3

    .line 242
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$3;->old:Ljavafx/collections/ObservableList;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$3;->old:Ljavafx/collections/ObservableList;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-static {v5}, Ljavafx/scene/control/ChoiceBox;->access$200(Ljavafx/scene/control/ChoiceBox;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 243
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-static {v5}, Ljavafx/scene/control/ChoiceBox;->access$200(Ljavafx/scene/control/ChoiceBox;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 245
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v4

    move-object v2, v4

    .line 246
    .local v2, "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 247
    move-object v4, v1

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 259
    :cond_2
    :goto_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ChoiceBox$3;->old:Ljavafx/collections/ObservableList;

    .line 261
    .end local v2    # "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    :cond_3
    return-void

    .line 250
    .restart local v2    # "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    :cond_4
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 251
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ChoiceBox$3;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v4}, Ljavafx/scene/control/ChoiceBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v3, v4

    .line 252
    .local v3, "newIndex":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 253
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedIndex(I)V

    .line 255
    :cond_5
    goto :goto_0

    .end local v3    # "newIndex":I
    :cond_6
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    goto :goto_0
.end method
