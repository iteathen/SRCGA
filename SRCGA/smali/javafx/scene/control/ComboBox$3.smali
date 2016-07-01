.class Ljavafx/scene/control/ComboBox$3;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


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
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBox;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBox;)V
    .locals 4

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$3;, "Ljavafx/scene/control/ComboBox$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBox;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$3;->this$0:Ljavafx/scene/control/ComboBox;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$3;, "Ljavafx/scene/control/ComboBox$3;"
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TT;>;"
    move-object v2, p2

    .local v2, "t":Ljava/lang/Object;, "TT;"
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$3;->this$0:Ljavafx/scene/control/ComboBox;

    invoke-static {v4}, Ljavafx/scene/control/ComboBox;->access$100(Ljavafx/scene/control/ComboBox;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_0

    .line 448
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$3;->this$0:Ljavafx/scene/control/ComboBox;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljavafx/scene/control/ComboBox;->access$102(Ljavafx/scene/control/ComboBox;Z)Z

    move-result v4

    .line 449
    return-void

    .line 445
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$3;->this$0:Ljavafx/scene/control/ComboBox;

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/scene/control/ComboBox;->access$200(Ljavafx/scene/control/ComboBox;Ljava/lang/Object;)V

    goto :goto_0
.end method
