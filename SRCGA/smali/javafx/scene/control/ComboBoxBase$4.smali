.class Ljavafx/scene/control/ComboBoxBase$4;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "ComboBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBoxBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBoxBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBoxBase;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$4;, "Ljavafx/scene/control/ComboBoxBase$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBoxBase;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/control/ComboBoxBase$4;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$4;, "Ljavafx/scene/control/ComboBoxBase$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$4;->this$0:Ljavafx/scene/control/ComboBoxBase;

    # getter for: Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_ARMED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ComboBoxBase;->access$200()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase$4;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ComboBoxBase;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 251
    return-void
.end method
