.class Ljavafx/scene/control/ChoiceBox$4;
.super Ljavafx/beans/property/SimpleObjectProperty;
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
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ChoiceBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ChoiceBox;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$4;, "Ljavafx/scene/control/ChoiceBox$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ChoiceBox;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ChoiceBox$4;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 6

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$4;, "Ljavafx/scene/control/ChoiceBox$4;"
    move-object v2, v0

    invoke-super {v2}, Ljavafx/beans/property/SimpleObjectProperty;->invalidated()V

    .line 327
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$4;->this$0:Ljavafx/scene/control/ChoiceBox;

    new-instance v3, Ljavafx/event/ActionEvent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBox;->fireEvent(Ljavafx/event/Event;)V

    .line 329
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$4;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v2

    move-object v1, v2

    .line 330
    .local v1, "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 331
    move-object v2, v1

    move-object v3, v0

    invoke-super {v3}, Ljavafx/beans/property/SimpleObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 333
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$4;->this$0:Ljavafx/scene/control/ChoiceBox;

    sget-object v3, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ChoiceBox;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 334
    return-void
.end method
