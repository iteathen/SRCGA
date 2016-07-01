.class Ljavafx/scene/control/ChoiceBox$1;
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
        "<",
        "Ljavafx/scene/control/SingleSelectionModel",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private oldSM:Ljavafx/scene/control/SelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SelectionModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/ChoiceBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ChoiceBox;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$1;, "Ljavafx/scene/control/ChoiceBox$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ChoiceBox;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ChoiceBox$1;->this$0:Ljavafx/scene/control/ChoiceBox;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/ChoiceBox$1;->oldSM:Ljavafx/scene/control/SelectionModel;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ChoiceBox$1;, "Ljavafx/scene/control/ChoiceBox$1;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$1;->oldSM:Ljavafx/scene/control/SelectionModel;

    if-eqz v2, :cond_0

    .line 178
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ChoiceBox$1;->oldSM:Ljavafx/scene/control/SelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/SelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$1;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-static {v3}, Ljavafx/scene/control/ChoiceBox;->access$000(Ljavafx/scene/control/ChoiceBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 180
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ChoiceBox$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/SelectionModel;

    move-object v1, v2

    .line 181
    .local v1, "sm":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ChoiceBox$1;->oldSM:Ljavafx/scene/control/SelectionModel;

    .line 182
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 183
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/SelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ChoiceBox$1;->this$0:Ljavafx/scene/control/ChoiceBox;

    invoke-static {v3}, Ljavafx/scene/control/ChoiceBox;->access$000(Ljavafx/scene/control/ChoiceBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 185
    :cond_1
    return-void
.end method
