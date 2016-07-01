.class Ljavafx/scene/control/ComboBoxBase$2;
.super Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.source "ComboBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ComboBoxBase;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ComboBoxBase;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBoxBase;Z)V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBoxBase;
    move v2, p2

    .local v2, "x0":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/ComboBoxBase$2;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$2;->this$0:Ljavafx/scene/control/ComboBoxBase;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    const-string v1, "showing"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase$2;, "Ljavafx/scene/control/ComboBoxBase$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$2;->this$0:Ljavafx/scene/control/ComboBoxBase;

    # getter for: Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ComboBoxBase;->access$100()Ljavafx/css/PseudoClass;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase$2;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ComboBoxBase;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 194
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase$2;->this$0:Ljavafx/scene/control/ComboBoxBase;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->EXPANDED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ComboBoxBase;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 195
    return-void
.end method
