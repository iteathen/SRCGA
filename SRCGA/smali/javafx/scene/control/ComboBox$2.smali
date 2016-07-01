.class Ljavafx/scene/control/ComboBox$2;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBox;
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
.field private oldSM:Ljavafx/scene/control/SingleSelectionModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SingleSelectionModel",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/ComboBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBox;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$2;, "Ljavafx/scene/control/ComboBox$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBox;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ComboBox$2;->this$0:Ljavafx/scene/control/ComboBox;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/ComboBox$2;->oldSM:Ljavafx/scene/control/SingleSelectionModel;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$2;, "Ljavafx/scene/control/ComboBox$2;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$2;->oldSM:Ljavafx/scene/control/SingleSelectionModel;

    if-eqz v2, :cond_0

    .line 340
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBox$2;->oldSM:Ljavafx/scene/control/SingleSelectionModel;

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$2;->this$0:Ljavafx/scene/control/ComboBox;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox;->access$000(Ljavafx/scene/control/ComboBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 342
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBox$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/SingleSelectionModel;

    move-object v1, v2

    .line 343
    .local v1, "sm":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$2;->oldSM:Ljavafx/scene/control/SingleSelectionModel;

    .line 344
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 345
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$2;->this$0:Ljavafx/scene/control/ComboBox;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox;->access$000(Ljavafx/scene/control/ComboBox;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 347
    :cond_1
    return-void
.end method
