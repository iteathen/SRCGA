.class Ljavafx/scene/control/Spinner$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/Spinner;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Spinner;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner$1;, "Ljavafx/scene/control/Spinner$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/Spinner;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/Spinner$1;->this$0:Ljavafx/scene/control/Spinner;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner$1;, "Ljavafx/scene/control/Spinner$1;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Spinner$1;->this$0:Ljavafx/scene/control/Spinner;

    invoke-static {v2}, Ljavafx/scene/control/Spinner;->access$000(Ljavafx/scene/control/Spinner;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->unbind()V

    .line 491
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/SpinnerValueFactory;

    move-object v1, v2

    .line 492
    .local v1, "newFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 495
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Spinner$1;->this$0:Ljavafx/scene/control/Spinner;

    invoke-static {v2}, Ljavafx/scene/control/Spinner;->access$000(Ljavafx/scene/control/Spinner;)Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/SpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 497
    :cond_0
    return-void
.end method
