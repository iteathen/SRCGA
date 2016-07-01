.class Ljavafx/scene/control/MultipleSelectionModel$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MultipleSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/MultipleSelectionModel;->selectionModeProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/control/SelectionMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/MultipleSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/SelectionMode;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/MultipleSelectionModel;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/SelectionMode;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    const-string v1, "selectionMode"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel$1;, "Ljavafx/scene/control/MultipleSelectionModel$1;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectionMode()Ljavafx/scene/control/SelectionMode;

    move-result-object v2

    sget-object v3, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    if-ne v2, v3, :cond_0

    .line 73
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v1, v2

    .line 75
    .local v1, "lastIndex":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->clearSelection()V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MultipleSelectionModel$1;->this$0:Ljavafx/scene/control/MultipleSelectionModel;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MultipleSelectionModel;->select(I)V

    .line 79
    .end local v1    # "lastIndex":I
    :cond_0
    return-void
.end method
